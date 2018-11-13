require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get movies_new_url
    assert_response :success
  end

  test "should get create" do
    get movies_create_url
    assert_response :success
  end

  test "should get index" do
    get movies_index_url
    assert_response :success
  end

  test "should get edit" do
    get movies_edit_url
    assert_response :success
  end

  test "should get update" do
    get movies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get movies_destroy_url
    assert_response :success
  end

  test "should get admin_index" do
    get movies_admin_index_url
    assert_response :success
  end

  test "should get title_search" do
    get movies_title_search_url
    assert_response :success
  end

  test "should get feature" do
    get movies_feature_url
    assert_response :success
  end

end
