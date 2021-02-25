class Preference < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre, class_name: 'Genre1', optional: true
  belongs_to :genre, class_name: 'Genre1', optional: true
  belongs_to :tag, class_name:'Category1', optional: true
  belongs_to :tag, class_name:'Category2', optional: true
  belongs_to :user, optional: true
end
