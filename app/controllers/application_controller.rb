class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  def admin_user
    if user_signed_in? && current_user.admin == true

    else
      redirect_to root_path
    end
  end


  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :admin])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :admin])
  end




end
