class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]
  def index
    @discussions = Discussions.all
  end

  def show
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new(discussion_params)
    @discussion.save
    # redirect_to discussion_path(@discussion)
  end

  def edit
  end

  def update
    @discussion = Discussion.find(params[:id])
    @discussion.update(discussion_params)
    # redirect_to discussion_path(@discussion)
  end

  def destroy
    @discussion.destroy
  end

  private
  def discussion_params
    params.require(:discussion).permit(:title, :content)
  end
  def set_discussion
    @discussion = Discussion.find(params[:id])
  end
end
