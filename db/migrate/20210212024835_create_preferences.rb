class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.integer :category1_id
      t.integer :category2_id
      t.integer :genre1_id
      t.integer :genre2_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
