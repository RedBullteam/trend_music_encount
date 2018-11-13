require 'test_helper'

class Admin::GoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_goods_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_goods_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_goods_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_goods_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_goods_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_goods_destroy_url
    assert_response :success
  end

end
