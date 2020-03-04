class SubDiscussionController < ApplicationController
  before_action :set_subdiscussion, only: [:show, :edit, :update, :destroy]

  def index
    @sub_discussions = SubDiscussion.all
  end

  def show; end

  def new
    @discussion = Discussion.find(params[:discussion_id])
    @sub_discussion = SubDiscussion.new
  end

  def create
    @discussion = Discussion.find(params[:discussion_id])
    @sub_discussion = SubDiscussion.new(sub_discussion_params)
    @sub_discussion.discussion = @discussion
    if @sub_discussion.save
      redirect_to sub_discussion_path(@sub_discussion.id)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @sub_discussion.update(sub_discussion_params)
      redirect_to sub_discussion_path(@sub_discussion.id)
    else
      render :edit
    end
  end

  def destroy
    discussion = @sub_discussion.discussion
    @sub_discussion.destroy
    redirect_to discussion_path(discussion)
  end

  private

  def sub_discussion_params
    params.require(:sub_discussion).permit(:title, :content)
  end

  def set_subdiscussion
    @sub_discussion = SubDiscussion.find(params[:id])
  end


end
