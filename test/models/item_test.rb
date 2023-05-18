require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'should load fixtures correctly' do
    item = Item.find_by name: 'Hamburguesa'
    assert_equal 'Hamburguesa', item.name
    assert_equal 1500, item.price
    assert_equal 200, item.callories
  end

  test 'should validate presence of name at model level' do
    item = Item.new(price: 1500, callories: 200)
    assert item.invalid?
  end

  test 'should validate presence of price at model level' do
    item = Item.new(name: 'Hamburguesa', callories: 200)
    assert item.invalid?
  end

  test 'should validate presence of callories at model level' do
    item = Item.new(name: 'Hamburguesa', price: 1500)
    assert item.invalid?
  end

  test 'should validate presence of name at db level' do
    assert_equal false, ActiveRecord::Base.connection.column_exists?(:items, :name, null: false)
  end

  test 'should validate presence of price at db level' do
    assert_equal false, ActiveRecord::Base.connection.column_exists?(:items, :price, null: false)
  end

  test 'should validate presence of callories at db level' do
    assert_equal false, ActiveRecord::Base.connection.column_exists?(:items, :callories, null: false)
  end

  test 'item belongs to a restaurant' do
    item = Item.find_by name: 'Hamburguesa'
    assert_respond_to item, :restaurant
    assert_instance_of Restaurant, item.restaurant
  end

  test 'item belongs to a dish' do
    item = Item.find_by name: 'Hamburguesa'
    assert_respond_to item, :dish
    assert_instance_of Dish, item.dish
  end
end
