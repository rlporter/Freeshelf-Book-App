class SessionsController < ApplicationController

  def new
  end

  def create
    username = params[:user][:username]
    user_password = params[:user][:password]
    user = User.find_by_username(username).authenticate(user_password)
      session[:user_id] = user.id
      redirect_to '/'
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
