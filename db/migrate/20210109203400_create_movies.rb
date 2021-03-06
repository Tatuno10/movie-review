class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :titleruby, null: false
      t.string :image
      t.text :synopsis, null: false
      t.string :copyright
      t.string :url
      t.timestamps 
    end
  end
end
