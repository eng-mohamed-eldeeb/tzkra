class ApplicationController < ActionController::API

    respond_to :json
    include ActionController::MimeResponds
    


  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:img_url, :is_admin, :email, :password, :bio, :location, :music_genre)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:img_url, :is_admin, :email, :password, :current_password, :bio, :location, :music_genre)}
  end
end
