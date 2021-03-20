class Preference < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre, class_name: 'genre1', optional: true
  belongs_to_active_hash :genre, class_name: 'genre2', optional: true
  belongs_to :tag, class_name:'category1', optional: true
  belongs_to :tag, class_name:'category2', optional: true
  belongs_to :user, optional: true
end
