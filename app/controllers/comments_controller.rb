class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(comment_params)
    @discussion = Discussion.find(params[:discussion_id])
    @comment.discussion = @discussion
    if @comment.save
      redirect_to discussion_comments(@comment)
    else
      render :new
      raise
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to discussion_comments_path
  end
  private

  def comment_params
    require(:comment).permit(:content)
  end
end
