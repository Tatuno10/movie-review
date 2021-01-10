class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :titleruby, :synopsis, :image)
  end
end
