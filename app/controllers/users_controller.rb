class UsersController < ApplicationController

  before_action :authenticate_user!

  # def index
  #   @orders = @current_user.orders

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    if @user.save
      flash[:notice] = "You've been registered!"
      flash[:color]= 'valid'
    else
      flash[:notice] = 'Invalid form'
      flash[:color]= 'invalid'
    end
    render 'new'
  end
end

private

  def authenticate_user!
    unless user_signed_in?
      redirect_to sign_in_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
