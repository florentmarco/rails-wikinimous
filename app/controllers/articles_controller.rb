class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]


  #read all the resources
  def index
    @articles = Article.all
  end

  #read one resource
  def show
    set_article
  end

  #display form for a resource creation
  def new
    @article = Article.new
  end

  #create resource
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path(@article)
  end

  #display form for a resoruce update
  def edit
    set_article
  end

  #update resource
  def update
    set_article
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  #delete resource
  def destroy
    set_article
    @article.destroy
    redirect_to articles_path
  end


private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
