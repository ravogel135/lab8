require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  test 'should route to restaurants index' do
    assert_routing '/restaurants', controller: 'restaurants', action: 'index'
  end

  test 'should route to restaurants show' do
    assert_routing '/restaurants/1', controller: 'restaurants', action: 'show', id: '1'
  end

  test 'should route to items index' do
    assert_routing 'restaurants/1/items', controller: 'items', action: 'index', restaurant_id: '1'
  end

  test 'should route to items show' do
    assert_routing 'restaurants/1/items/1', controller: 'items', action: 'show', restaurant_id: '1', id: '1'
  end

  test 'should route to dishes index' do
    assert_routing 'dishes', controller: 'dishes', action: 'index'
  end

  test 'should route to dishes show' do
    assert_routing 'dishes/1', controller: 'dishes', action: 'show', id: '1'
  end
end
