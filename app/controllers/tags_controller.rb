class TagsController < ApplicationController
  def index
    @tags = Tag.all
    # redirect_to tag_path
  end

  def show
    @picture = Picture.find(params[:id])
    @tag = Tag.find(params[:id])
  end
end
