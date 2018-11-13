require 'test_helper'

class BagItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bag_items_index_url
    assert_response :success
  end

  test "should get edit" do
    get bag_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get bag_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bag_items_destroy_url
    assert_response :success
  end

end
