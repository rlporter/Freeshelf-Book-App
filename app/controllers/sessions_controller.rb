class SessionsController < ApplicationController

  def index
    @session = Session.find(params[:id])
  end

  def show
    @session = @current_user.present?
  end

  def new
    @session != @current_user.present?
  end

  def create
    username = params[:user][:username]
    user_password = params[:user][:password_digest]
    user = User.find_by_username(username)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def destroy
    reset_session
    redirect_to root
  end

end
