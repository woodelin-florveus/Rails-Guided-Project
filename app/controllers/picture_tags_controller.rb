class PictureTagsController < ApplicationController
  def new
    @picture_tag = PictureTag.new
    @pictures = Picture.all
    @tags = Tag.all
  end

  def create
    new_picture = params(:picture_tag).permit(:picture_id, :tag_id)
    @picture_tag = PictureTag.create(new_picture)
    redirect_to picture_path(@picture_tag)

  end
end
