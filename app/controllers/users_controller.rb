class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :movies
  def show
    @reviews = Review.where(user_id: current_user.id)
  end
  private
  def movies
    @q = Movie.ransack
    @tag = Tag.all
    @movies = Movie.all
    @moviesup = Movie.order("id DESC")
  end
end
