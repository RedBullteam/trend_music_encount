require 'test_helper'

class CdProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cd_products_index_url
    assert_response :success
  end

  test "should get show" do
    get cd_products_show_url
    assert_response :success
  end

  test "should get era_search" do
    get cd_products_era_search_url
    assert_response :success
  end

  test "should get era_search_list" do
    get cd_products_era_search_list_url
    assert_response :success
  end

  test "should get search" do
    get cd_products_search_url
    assert_response :success
  end

  test "should get list" do
    get cd_products_list_url
    assert_response :success
  end

end
