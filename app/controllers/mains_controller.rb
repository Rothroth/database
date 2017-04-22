class MainsController < ApplicationController

  layout "admin"

  def index
    @article = Article.sort
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(articles_parameters)
    if @article.save
      redirect_to(:action =>"index")
    else
      render('nowa')
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(articles_parameters)
      redirect_to(:action =>"show", :id => @article.id)
    else
      render('edit')
    end
  end

  def delete
    @article = Article.find(params[:id])
  end

  def deletion
    article = Article.find(params[:id]).destroy
    redirect_to(:action =>"index")
  end

  def articles_parameters
    params.require(:article).permit(:summary, :description, :solved, :notes)
  end
end
