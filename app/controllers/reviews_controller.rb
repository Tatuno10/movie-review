class ReviewsController < ApplicationController
  before_action :set_movie
  before_action :movies, only: [:edit, :update]

  def index
    @review = Review.new
    @reviews = @movie.reviews.includes(:movie)
  end

  def create
    @review = @movie.reviews.new(review_params)
    #respond_to do |format|
    #  format.html { redirect_to movie_path(@movie)  }
    #  format.json
    #end
    if @review.save
      redirect_to movie_path(@movie), notice: 'レビューが送信されました'
    else
      @reviews =  @movie.reviews.includes(:movie)
      redirect_to movie_path(@movie), notice: @review.errors.full_messages
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    if @movie.reviews.update(review_params)
      redirect_to movie_path(@movie), notice: 'レビューを編集しました'
    else
      flash.now[:alert] = @review.errors.full_messages
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if current_user.id == @review.user_id
      @review.destroy
      redirect_to movie_path(@movie), notice: "レビューを削除しました。"
    else
      redirect_to movie_path(@movie), notice: "レビューの投稿者ではありません。"
    end
  end

  def where
    return @reviews
  end

  def point(review)
    return point_average(review)
  end


  private
  def review_params
    params.require(:review).permit(:title, :review, :genre_id, :point).merge(user_id: current_user.id)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def movies
    @tag = Tag.all
    @movies = Movie.all
    @moviesup = Movie.order("id DESC")
  end

end
