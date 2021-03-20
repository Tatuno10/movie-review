class Tag < ApplicationRecord
  has_ancestry

  has_many :movie_tags
  has_many :movies, through: :movie_tags
  has_many :preferences, class_name: 'Preference', foreign_key: "genre1_id"
  has_many :preferences, class_name: 'Preference', foreign_key: "genre2_id"

  validates :name, presence: {message: 'は空で入力しないでください。'}
end
