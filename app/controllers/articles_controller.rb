class ArticlesController < ApplicationController
  # CHANGES TO THE RENDER METHOD BECAUSE OF THE ADDITION OF THE FAST JSON API
  # def index
  #   articles = Article.recent.
  #               page(params[:page]).
  #               per(params[:per_page])
  #   render json: serializer.new(articles)
  # end

  # def show
  #   render json: serializer.new(Article.find(params[:id]))
  # end

# IF I WANT TO USE THE ORIGINAL METHODS, I HAVE TO CHANGE THE RENDER
# DEFINITION IN THE APPLICATION CONTROLLER
  def index
    articles = Article.recent.
                page(params[:page]).
                per(params[:per_page])
    render json: articles
  end

  def show
    render json: Article.find(params[:id])
  end

  private

  def serializer
    ArticleSerializer
  end
end