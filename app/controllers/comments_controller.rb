class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @subdiscussion = SubDiscussion.find(params[:sub_discussion_id])
    @comment.sub_discussion = @subdiscussion
    @comment.user = current_user
    @discussion = @subdiscussion.discussion
    @sub_discussions = @discussion.sub_discussions
    @selected = @subdiscussion.id
    if @comment.save
      flash[:notice] = "Comment created succesfully"
      render 'discussions/show'
    else
      render :new
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    sub_discussion = comment.sub_discussion
    discussion = sub_discussion.discussion
    comment.destroy
    redirect_to discussion_path(discussion)
  end

  def upvote
    @comment = Comment.find(params[:id])
    @subdiscussion = @comment.sub_discussion
    @comment.upvote_by current_user
    # redirect_back fallback_location: '/', allow_other_host: false
  end

  def downvote
    @comment = Comment.find(params[:id])
    @subdiscussion = @comment.sub_discussion
    @comment.downvote_by current_user
    # redirect_back fallback_location: '/', allow_other_host: false
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :id, :sub_discussion_id, :comment_text)
  end
end
