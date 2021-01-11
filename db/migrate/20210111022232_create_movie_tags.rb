class CreateMovieTags < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_tags do |t|

      t.timestamps
    end
  end
end
