class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :configure_permitted_parameters

    private

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    end
end
