class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?
  
  protected
  
  def 
    configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
  end
end