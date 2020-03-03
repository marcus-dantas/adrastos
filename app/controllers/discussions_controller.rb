class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]
  def index
    @discussions = Discussion.all
  end

  def show; end

  def new
    set_article
    @discussion = Discussion.new
  end

  def create
    set_article
    @discussion = Discussion.new(discussion_params)
    @discussion.user_id = current_user.id
    @discussion.article_id = @article.id
    if @discussion.save
      redirect_to discussion_path(@discussion)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @discussion.update(discussion_params)
      redirect_to discussion_path(@discussion)
    else
      render :edit
    end
  end

  def destroy
    article = @discussion.article
    @discussion.destroy
    redirect_to article_path(article)
  end

  private

  def discussion_params
    params.require(:discussion).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_discussion
    @discussion = Discussion.find(params[:id])
  end
end
