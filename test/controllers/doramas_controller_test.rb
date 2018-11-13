require 'test_helper'

class DoramasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doramas_new_url
    assert_response :success
  end

  test "should get create" do
    get doramas_create_url
    assert_response :success
  end

  test "should get index" do
    get doramas_index_url
    assert_response :success
  end

  test "should get edite" do
    get doramas_edite_url
    assert_response :success
  end

  test "should get update" do
    get doramas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get doramas_destroy_url
    assert_response :success
  end

  test "should get feature" do
    get doramas_feature_url
    assert_response :success
  end

  test "should get title_search" do
    get doramas_title_search_url
    assert_response :success
  end

  test "should get admin_index" do
    get doramas_admin_index_url
    assert_response :success
  end

end
