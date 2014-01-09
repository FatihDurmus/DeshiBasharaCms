class PublicArticleController < ApplicationController
  def index
    @articles = Article.all.last(5)
  end

  def show
  end
end
