class MoviesController < ApplicationController
before_action :movies, only: [:index, :show, :search]

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
    @reviews = Review.where(movie_id: @movie.id)
    @review = Review.new
    @point =  Review.point_average(@reviews)
  end

  def search
    @movies = Movie.search(params[:keyword])
    @search = @movies.size
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
