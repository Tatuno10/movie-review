class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.integer :tag1_id
      t.integer :tag2_id
      t.integer :genre1_id
      t.integer :genre2_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
