class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_movie
  before_action :movies, only: [:edit, :update]
  before_action :check_user, only: [:edit, :update, :destroy]

  def index
    @review = Review.new
    @reviews = @movie.reviews.includes(:movie)
  end

  def create
    @review = @movie.reviews.create(review_params)
    respond_to do |format|
      format.html { redirect_to movie_path(@movie)  }
      format.json
    end
    #if @review.save
    #  redirect_to movie_path(@movie), notice: 'レビューが送信されました'
    #else
    #  @reviews =  @movie.reviews.includes(:movie)
    #  redirect_to movie_path(@movie), notice: @review.errors.full_messages
    #end
  end

  def edit
  end

  def update
    if @movie.reviews.update(update_params)
      redirect_to movie_path(@movie), notice: 'レビューを編集しました'
    else
      flash.now[:alert] = @review.errors.full_messages
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to movie_path(@movie), notice: "レビューを削除しました。"
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

  def update_params
    params.require(:review).permit(:title, :review, :genre_id, :point)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def movies
    @q = Movie.ransack
    @tag = Tag.all
    @movies = Movie.all
    @moviesup = Movie.order("id DESC")
  end

  def check_user
    @review = Review.find(params[:id])
    unless @review.user.id == current_user.id || current_user.admin?
      redirect_to movie_path(@movie), notice: "レビューの投稿者ではありません。"
    end
  end

end
