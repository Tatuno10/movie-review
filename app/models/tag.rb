class Tag < ApplicationRecord
  has_many :movie_tags
  has_many :movie through: :movie_tags
end
