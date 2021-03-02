class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :movies
  def show
  end
  private
  def movies
    @tag = Tag.all
    @movies = Movie.all
    @moviesup = Movie.order("id DESC")
  end
end
