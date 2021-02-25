class CreateMovieCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_casts do |t|
      t.references :movie, foreign_key: true
      t.references :cast, foreign_key: true
      t.timestamps
    end
  end
end
