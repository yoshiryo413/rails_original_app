class ApplicationController < ActionController::Base
  
  

  def after_sign_in_path_for(resource) 
    posts_path
  end

  def after_inactive_sign_up_path_for(resource)
    posts_path
  end

  # def after_sign_out_path_for(resource)
  #   root_path
  # end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
  
  private

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  
end
