class ApplicationController < ActionController::Base
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  
  def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up) << [:username, :display_name]
	
	#devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password) }
	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :display_name, :email, :password, :password_confirmation) }
	
  end

  
end
