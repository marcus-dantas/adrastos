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
      flash[:notice] = "Commented created succesfully"
      render 'discussions/show'
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to sub_discussion_comments_path
  end
  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
