require 'test_helper'

class CartItemControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get cart_item_add_url
    assert_response :success
  end

  test "should get destroy" do
    get cart_item_destroy_url
    assert_response :success
  end

  test "should get update" do
    get cart_item_update_url
    assert_response :success
  end

end
