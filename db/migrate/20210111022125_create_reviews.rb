class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :review, null: false
      t.references :movie, foreign_key: true
      t.timestamps
    end
  end
end