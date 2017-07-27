class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def show
    @user = @current_user.find(params[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user_id
      redirect_to :home, notice: 'Account created successfully'
    else
      flash[:error] = 'An error occurred!'
      render 'new'
    end
  end

private

  def authenticate_user!
    unless user_signed_in?
      redirect_to new_session_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
