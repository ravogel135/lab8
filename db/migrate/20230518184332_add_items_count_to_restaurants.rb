class AddItemsCountToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :items_count, :integer
  end
end
