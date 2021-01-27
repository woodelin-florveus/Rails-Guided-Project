class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @tags = Tag.all
  end

  def show
    #  @picture_tag = PictureTag.find(params[:id])
     @picture = Picture.find(params[:id])
    # @comment = Comment.find(params[:id])
  end

  def new
    # byebug
    @tags = Tag.all
    @users = User.all
    @picture = Picture.new
    @tag = Tag.new
  end

  def create
        # byebug
       @picture = Picture.create(picture_params(:image_url, :title, :user_id))
      # redirect_to '/pictures/#{new_image.id}'
      redirect_to picture_path(@picture.id)
      
      
  end

  private

  def picture_params(*args)
    params.require(:picture).permit(:image_url, :title, :user_id)
  end




end
