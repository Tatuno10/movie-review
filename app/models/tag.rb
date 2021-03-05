class Tag < ApplicationRecord
  has_ancestry

  has_many :movie_tags
  has_many :movies, through: :movie_tags
  has_many :preferences

  validates :name, presence: {message: 'は空で入力しないでください。'}
end
