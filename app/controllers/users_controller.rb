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
    new_user = User.create(username: params[:username], email: params[:email], password: params[:password])
    redirect_to "/users/#{new_user.id}"
  end

  def show
    # byebug
    @user = User.find(params[:id])
    @picture = User.find(params[:id])
  end

end
