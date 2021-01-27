class UsersController < ApplicationController
  def index
    @users = User.all
    @pictures = Picture.all
  end
  
  
  def new
    @user = User.new
    @picture = Picture.new
  end

  def create
    # new_user = User.create(username: params[:username], email: params[:email], password: params[:password])
    # redirect_to "/users/#{new_user.id}"

    @user = User.create(user_params(:username, :email, :password))
    redirect_to user_path(@user.id)
  end

  def show
    # byebug
    @user = User.find(params[:id])
    @picture = User.find(params[:id])
  end

  private

  def user_params(*args)
    params.require(:user).permit(:username, :email, :password)
  end

end
