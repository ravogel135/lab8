require 'test_helper'

class DishTest < ActiveSupport::TestCase
  test 'should load fixtures correctly' do
    dish = Dish.find_by name: 'Dessert'
    assert_equal 'Dessert', dish.name
  end

  test 'should validate presence of name at model level' do
    dish = Dish.new
    assert dish.invalid?
  end

  test 'should validate presence of name at db level' do
    assert_equal false, ActiveRecord::Base.connection.column_exists?(:dishes, :name, null: false)
  end

  test 'should have many items' do
    dish = Dish.find_by name: 'Dessert'
    assert_respond_to dish, :items
  end
end
