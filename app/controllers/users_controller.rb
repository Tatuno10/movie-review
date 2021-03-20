class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :movies

  def show
    @reviews = Review.where(user_id: current_user.id)
  end
  
  def edit
    @preference = Preference.find_by(user_id: @user.id )
  end

  def update
    @preference = Preference.find_by(user_id: @user.id )
    if @preference.update(preference_params)
      redirect_to user_path(current_user.id), notice: "ジャンル、カテゴリーを編集しました"
    else
      flash.now[:alert] = @preference.errors.full_messages
      render :edit
    end
  end

  private
  def movies
    @user = User.find(current_user.id)
    @q = Movie.ransack
    @tag = Tag.all
    @movies = Movie.all
    @moviesup = Movie.order("id DESC")
  end

  def preference_params
    params.require(:preference).permit(
      :tag1_id,
      :tag2_id, 
      :genre1_id,
      :genre2_id
    )
  end
end
