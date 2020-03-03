class ArticlesController < ApplicationController
  before_action :find_article, only: [ :show, :edit, :update, :destroy ]
  def index
    @articles = Article.all.first(8)
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = "Article Successfully created"
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit; end

  def update
    @article.update(params[:article])
    redirect_to article_path(@article)
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
    params.require(:article).permit(:content, :user, :title)
  end
end
