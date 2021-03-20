class Preference < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre1, class_name: 'Genre', optional: true
  belongs_to_active_hash :genre2, class_name: 'Genre', optional: true
  belongs_to :tag, class_name:'tag1_id', optional: true
  belongs_to :tag, class_name:'tag2_id', optional: true
  belongs_to :user, optional: true
end
