class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected


# this mumbo jumbo lets you save edited stuff with devise


   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :title, :thumbnail])
     devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password,
     :password_confirmation, :current_password, :title, :thumbnail, :description, :itunes, :stitcher, :podbay])
   end

   end
