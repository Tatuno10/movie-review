class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    Tag.create(tag_params)
  end

  def all
    return @tags
  end
  private

  def tag_params
    params.require(:tag).permit(:name, :ancestry)
  end
end
