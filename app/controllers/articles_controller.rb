class ArticlesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to root_path, notice: "Your article was sucessfully created"
  end


  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

