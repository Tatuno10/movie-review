class AddAncestryToTag < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :ancestry, :string
    add_index :tags, :ancestry
  end
end
