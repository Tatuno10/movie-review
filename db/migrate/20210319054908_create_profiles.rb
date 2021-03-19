class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :preference_text
      t.integer :movie1_id
      t.integer :movie2_id
      t.integer :movie3_id
    end
  end
end
