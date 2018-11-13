require 'test_helper'

class Admin::BagItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_bag_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_bag_items_update_url
    assert_response :success
  end

end
