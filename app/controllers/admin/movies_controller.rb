class Admin::MoviesController < ApplicationController
  before_action :if_not_admin
  def new
    @movie = Movie.new
  end

  def create
    if  Movie.create(movie_params)
      redirect_to root_path, notice: "映画情報を作成しました。"
    else
      flash.now[:alert] = @movie.errors.full_messages
      render "new"
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if  @movie.update(movie_params)
      redirect_to root_path, notice: "映画情報を編集しました。"
    else
      flash.now[:alert] = @movie.errors.full_messages
      render "edit"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path, notice: "映画情報を削除しました。"
  end

  private

  def if_not_admin
    redirect_to root_path, notice: "管理者ではありません" unless current_user.admin?
  end

  def movie_params
    params.require(:movie).permit(:title, :titleruby, :synopsis, :copyright, :url, :image, :image_cache, tag_ids: [])
  end
end