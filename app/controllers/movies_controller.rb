class MoviesController < ApplicationController
before_action :movies, only: [:index, :show, :search]

  def index
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = Review.where(movie_id: @movie.id)
    @review = Review.new
    @point =  Review.point_average(@reviews)
  end

  def search
    @q = Movie.ransack(search_params)
    @searchs = @q.result(distinct: true)
    @search = params[:q]
  end
  

  private

  def movies
    @q = Movie.ransack
    @tag = Tag.all
    @movies = Movie.all
    @moviesup = Movie.order("id DESC")
  end

  def movie_params
    params.require(:movie).permit(:title, :titleruby, :synopsis, :copyright, :url, :image, :image_cache, tag_ids: [])
  end

  def search_params
    params.require(:q).permit!
  end
end
