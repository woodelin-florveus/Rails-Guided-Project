class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @picture = Picture.find(params[:id])
  end
end
