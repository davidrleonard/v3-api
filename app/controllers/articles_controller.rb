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
  end

  def create
    @article = Article.create(article_params)

    respond_to do |wants|
      wants.html { redirect_to @article }
      wants.json { render json: @article, status: :ok }
    end
  end

  def destroy
  end

  def error
  end

  private
    def article_params
      permitted_fields = [:url, :title, :creator_designer, :creator_author, :creator_data_wrangler, :creator_programmer, :creator_researcher, :creator_fact_checker, :creator_copy_editor, :creator_others]
      params.fetch(:article, {}).permit(permitted_fields)
    end
end
