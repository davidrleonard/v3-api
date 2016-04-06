class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
    if params[:url]
      @url = URI.decode(params[:url])
    else
      @url = "unknown"
    end
  end

  def create
    @article = Article.create(article_params)
    # redirect_to @article
    redirect_to new_component_path(article_id: @article.id)
  end

  def destroy
  end

  def error
  end

  private
    def article_params
      permitted_fields = [:url, :title, :description]
      params.fetch(:article, {}).permit(permitted_fields)
    end
end
