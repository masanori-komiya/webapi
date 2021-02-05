class AddColumnsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :url, :string
    add_column :items, :price, :string
  end
end
