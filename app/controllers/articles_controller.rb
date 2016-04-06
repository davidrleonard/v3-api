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
    @component_title = params[:component_title]
    if params[:url]
      @url = URI.decode(params[:url])
      if Article.exists?(url: params[:url])
        @article = Article.find_by(url: params[:url])
        redirect_to new_component_path(article_id: @article.id, component_title: @component_title)
      end
    else
      @url = "unknown"
    end
  end

  def create
    @component_title = article_params[:component_title]
    @article = Article.create(article_params.except(:component_title))
    # redirect_to @article
    redirect_to new_component_path(article_id: @article.id, component_title: @component_title)
  end

  def destroy
  end

  def error
  end

  private
    def article_params
      permitted_fields = [:url, :title, :description, :component_title]
      params.fetch(:article, {}).permit(permitted_fields)
    end
end
