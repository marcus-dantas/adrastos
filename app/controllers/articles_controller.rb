class ArticlesController < ApplicationController
  before_action :find_article, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @articles = Article.all.first(8)
  end

  def show
    @discussions = Discussion.all
    @subdiscussions = SubDiscussion.all
    @discussion = Discussion.new
  end

  def new
    @article = Article.new

  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = "Article successfully created"
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:content, :user, :title, :photo)
  end
end
