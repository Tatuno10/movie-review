class Movie < ApplicationRecord
  validates :title, presence: true

  mount_uploader :image, ImageUploader

  has_many :reviews
  has_many :movie_tags
  has_many :tags, through: :movie_tags
  has_many :movie_casts
  has_many :cast, through: :movie_casts

  with_options presence: {message: 'は空で入力しないでください。'} do
    validates :title
    validates :titleruby
    validates :image
    validates :synopsis
  end

  validates :titleruby, format: { with: /\A[ぁ-ん-]+\z/, message: 'に全角ひらがなを使用してください'}

  def self.search(search)
    if search != ""
      Movie.where('title LIKE(?)', "%#{search}%")
    else
      Movie.all
    end
  end
end
