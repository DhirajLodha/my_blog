class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @article = Article.all
  end

  def show

  end

  def home

  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      redirect_to "/articles"
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def edit

  end

  def update
    if @article.update(article_params)
      redirect_to "/articles"
    else
      render :edit, :status => :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    redirect_to "/articles"
  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
