class ComponentsController < ApplicationController
  def index
  end

  def show
    @component = Component.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
    @article = Article.find(params[:article_id])
  end

  def create
    @component = Component.create(article_params)
    # redirect_to @article
    # redirect_to new_component_path(article_id: @article.id)
  end

  def destroy
  end

  def error
  end

  private
    def component_params
      permitted_fields = [:title, :description, :selection_hash, :tools_visualization_used_tags, :tools_publication_used_tags, :tools_platform_designed_for_tags, :tools_additional_details, :design_graphic_type, :design_graphic_choice_details, :design_interactive_tags, :design_usability_testing_details, :design_additional_details]
      params.fetch(:component, {}).permit(permitted_fields)
    end
end
