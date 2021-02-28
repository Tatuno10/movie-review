class MoviesController < ApplicationController
before_action :movies, only: [:index, :show]

  def index
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to root_path, notice: "映画情報を編集しました。"
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = Review.all
    @review = Review.new
  end
  

  private

  def movies
    @tag = Tag.all
    @movies = Movie.all
    @moviesup = Movie.order("id DESC")
  end

  def movie_params
    params.require(:movie).permit(:title, :titleruby, :synopsis, :image, :image_cache, tag_ids: [])
  end
end
