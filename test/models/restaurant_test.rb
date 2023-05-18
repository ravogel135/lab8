require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test 'should load fixtures correctly' do
    restaurant = Restaurant.find_by name: 'NcDonalds'
    assert_equal 'NcDonalds', restaurant.name
    assert_equal 'El Salto s/n', restaurant.address
  end

  test 'should validate presence of name at model level' do
    restaurant = Restaurant.new(address: 'El Salto s/n')
    assert restaurant.invalid?
  end

  test 'should validate presence of address at model level' do
    restaurant = Restaurant.new(name: 'NcDonalds')
    assert restaurant.invalid?
  end

  test 'should validate presence of name at db level' do
    assert_equal false, ActiveRecord::Base.connection.column_exists?(:restaurants, :name, null: false)
  end

  test 'should validate presence of address at db level' do
    assert_equal false, ActiveRecord::Base.connection.column_exists?(:restaurants, :address, null: false)
  end

  test 'should have many items' do
    restaurant = Restaurant.find_by name: 'NcDonalds'
    assert_respond_to restaurant, :items
  end
end
