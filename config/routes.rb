Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :roasts do
    resources :comments
  end
  resources :comments do
    member do
      put "like" => "comments#upvote"
      put "unlike" => "comments#downvote"
    end
    resources :roasts
  end
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "home#index"
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
end
end
