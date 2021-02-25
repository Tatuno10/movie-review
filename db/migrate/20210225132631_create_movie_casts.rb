class CreateMovieCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_casts do |t|

      t.timestamps
    end
  end
end
