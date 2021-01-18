class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :text, null: false
      t.string :ancestry
      t.timestamps
    end

    add_index
  end
end
