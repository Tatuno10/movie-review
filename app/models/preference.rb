class Preference < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre, class_name: 'genre1_id', optional: true
  belongs_to_active_hash :genre, class_name: 'genre2_id', optional: true
  belongs_to :tag, class_name:'category1_id', optional: true
  belongs_to :tag, class_name:'category2_id', optional: true
  belongs_to :user, optional: true
end
