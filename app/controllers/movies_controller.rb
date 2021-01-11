class MoviesController < ApplicationController
  def index
    @movie = Movie.all
    @movieup = Movie.order("id DESC")
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
  end

  def edit
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = Review.all
    @review = Review.new
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :titleruby, :synopsis, :image)
  end
end
