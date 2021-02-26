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
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  def all
    return @reviews
  end

  def new
    return @review
  end

  private
  def review_params
    params.require(:review).permit(:title, :review, :genre)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
