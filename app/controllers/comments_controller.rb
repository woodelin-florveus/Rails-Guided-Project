class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @comments = Comment.all
    @users = User.all
    @pictures = Picture.all
  end

  def create
    # create_comment = Comment.create(content: params[:content], user_id: params[:user_id], picture_id: params[:picture_id])
     create_comment = params.require(:comment).permit(:content, :picture_id, :user_id)
     @comment = Comment.create(create_comment)
    redirect_to comment_path(@comment.id)
  end

  def show
    @comment = Comment.find(params[:id])
    @user = User.find(params[:id])
  end
end
