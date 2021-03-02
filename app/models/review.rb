class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :movie
  belongs_to :user

  def self.point_average(review)
    sum_num = 0
    review.each do |review|
      sum_num = sum_num + review.point
    end
    average = sum_num.to_f / review.length.to_f
    average.round(1)
  end
end
