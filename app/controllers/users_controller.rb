class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  
  def new
    @user = User.new
    @picture = Picture.new
  end

  def create
    # byebug
    # @new_user = User.create(username: params[:username], email: params[:email], password: params[:password])
    # redirect_to user_path(@new_user.id)
    @new_picture = Picture.create(image_url: params[:image_url], title: params[:title], user_id: params[:user_id])
    redirect_to user_path(@new_picture.id)
  end

  def show
    @user = User.find(params[:id])
    # @picture = Picture.find(params[:id])
    @pictures = Picture.all
    # @tags = Tag.all
  end

end
