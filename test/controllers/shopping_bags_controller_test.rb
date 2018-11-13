require 'test_helper'

class ShoppingBagsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shopping_bags_new_url
    assert_response :success
  end

  test "should get create" do
    get shopping_bags_create_url
    assert_response :success
  end

  test "should get index" do
    get shopping_bags_index_url
    assert_response :success
  end

  test "should get show" do
    get shopping_bags_show_url
    assert_response :success
  end

  test "should get destroy" do
    get shopping_bags_destroy_url
    assert_response :success
  end

end
