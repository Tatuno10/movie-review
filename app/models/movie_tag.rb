class MovieTag < ApplicationRecord
  belongs_to :tag
  belongs_to :movie
end
