class StaticController < ApplicationController
  def index
    @articles = Article.all
  end
end
