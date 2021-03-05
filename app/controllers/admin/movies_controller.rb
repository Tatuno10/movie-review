class Admin::MoviesController < ApplicationController
  before_action :if_not_admin
  before_action :set_movie, only: [:edit, :destroy]
  def new
    @movie = Movie.new
  end

  def create
    @movie = movie.new(movie_params)
    if  @movie.save
      redirect_to root_path, notice: "映画情報を作成しました。"
    else
      flash.now[:alert] = @movie.errors.full_messages
      render "new"
    end
  end

  def edit
  end

  def update
    if  @movie.update(movie_params)
      redirect_to root_path, notice: "映画情報を編集しました。"
    else
      flash.now[:alert] = @movie.errors.full_messages
      render "edit"
    end
  end

  def destroy
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
  
  def set_movie
    begin 
      @movie = Movie.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path,notice: "ご指定の映画が見つかりません。"  
    end
  end

end