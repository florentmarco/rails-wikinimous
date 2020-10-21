class ArticlesController < ApplicationController

  #read all the resources
  def index
    @articles = Article.all
  end

  #read one resource
  def show
    @article = Article.find(params[:id])
  end

  #display form for a resource creation
  def new
  end

  #create resource
  def create
  end

  #display form for a resoruce update
  def edit
  end

  #update resource
  def update
  end

  #delete resource
  def destroy
  end


end
