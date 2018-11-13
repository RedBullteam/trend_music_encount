require 'test_helper'

class Admin::CdProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_cd_products_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_cd_products_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_cd_products_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_cd_products_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_cd_products_destroy_url
    assert_response :success
  end

end
