class MovieTag < ApplicationRecord
  belongs_to :tag, optional: true
  belongs_to :movie, optional: true
end
