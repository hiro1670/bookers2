class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: 
  before_action :configre_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resoyrce)
    @user_path
  end
  
  def after_sign_out_path_for(resource)
    root_path
  end
  
  protected
  
  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  end
end
