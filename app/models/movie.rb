class Movie < ApplicationRecord
  validates :title, presence: true

  mount_uploader :image, ImageUploader

  has_many :reviews
  has_many :movie_tags, dependent: :destroy
  has_many :tags, through: :movie_tags
  has_many :movie_casts, dependent: :destroy
  has_many :cast, through: :movie_casts

  with_options presence: {message: 'は空で入力しないでください。'} do
    validates :title
    validates :titleruby
    validates :synopsis
  end


  def self.search(search)
    if search != ""
      Movie.where('title LIKE(?)', "%#{search}%")
    else
      Movie.all
    end
  end
end
