class AddDishRefToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :dish, null: false, foreign_key: true
  end
end
