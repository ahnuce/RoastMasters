class HomeController < ApplicationController
  # load_and_authorize_resource :class => RoastsController
  def index
    if user_signed_in?
      redirect_to roasts_path
    else
      redirect_to new_user_session_path
    end
  end
end
