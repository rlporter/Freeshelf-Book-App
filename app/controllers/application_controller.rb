class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action do
  #   @current_user = User.find(session[:id])
  # end

  def authenticate_user!
    unless user_signed_in
      redirect_to new_session_path
    end
  end

  def user_signed_in?
    @current_user.present?
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session [:user_id]
  end
  helper_method :current_user

end
