class RegistrationsController < Devise::RegistrationsController
  layout false

  before_action :configure_permitted_parameters, :only => [:create]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :name, :surname) }
  end
end