class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_article, only: %i[show edit update destroy]
  before_action :user, only: %i[new create edit update destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = @user
    if @article.save
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :date, :image)
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def user
    @user = current_user
  end
end
