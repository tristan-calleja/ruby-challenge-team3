class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?

   

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :username, :phone, :address, :city, :country])
    end

    def after_sign_in_path_for(resource)
      stored_location_for(resource) || "/users/#{resource.id}/posts"
    end
  def after_sign_up_path_for(resource)
      stored_location_for(resource) || "/users/#{resource.id}/posts"
  end
end
