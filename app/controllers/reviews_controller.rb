class ReviewsController < ApplicationController
  before_action :set_movie

  def index
    @review = Review.new
    @reviews = @movie.reviews.includes(:movie)
  end

  def create
    @review = @movie.reviews.new(review_params)
    if @review.save
      redirect_to movie_path(@movie), notice: 'レビューが送信されました'
    else
      @reviews =  @movie.reviews.includes(:movie)
      flash.now[:alert] = @review.errors.full_messages
      redirect_to movie_path(@movie)
    end
  end

  def all
    return @reviews
  end


  private
  def review_params
    params.require(:review).permit(:title, :review, :genre_id, :point).merge(user_id: current_user.id)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
