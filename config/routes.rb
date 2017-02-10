Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :roasts
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: "home#index"
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
end
end
