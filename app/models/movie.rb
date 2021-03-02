class Movie < ApplicationRecord
  validates :title, presence: true

  mount_uploader :image, ImageUploader

  has_many :reviews
  has_many :movie_tags
  has_many :tags, through: :movie_tags
  has_many :movie_casts
  has_many :cast, through: :movie_casts

  def self.search(search)
    if search != ""
      Movie.where('title LIKE(?)', "%#{search}%")
    else
      Movie.all
    end
  end
end
