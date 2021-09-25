class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :is_admin!

  def configure_permitted_parameters
    added_attrs = %i[username email password password_confirmation remember_me avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def is_admin!
    if current_user&.admin
    else
      redirect_to root_path
    end
  end
end
