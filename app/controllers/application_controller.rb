class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to main_app.chat_room_url, :alert => "Not authorized!" }
    end
  end
    protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :gamertag, :city, :state, :email, :password, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :gamertag, :city, :state, :email, :password, :role])
      end

end
