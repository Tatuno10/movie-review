class Profile < ApplicationRecord
  belongs_to :movie, class_name: 'movie1_id', optional: true
  belongs_to :movie, class_name: 'movie2_id', optional: true
  belongs_to :movie, class_name: 'movie3_id', optional: true
  belongs_to :user, optional: true

  
end
