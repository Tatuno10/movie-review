class MoviesController < ApplicationController
before_action :movies, only: [:index, :show, :search]
before_action :set_movie, only: :show

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

  def search_params
    params.require(:q).permit!
  end

  def set_movie
    begin 
      @movie = Movie.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path,notice: "ご指定の映画が見つかりません。"  
    end
  end
end
