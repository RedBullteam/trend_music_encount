require 'test_helper'

class CompaneysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get companeys_new_url
    assert_response :success
  end

  test "should get create" do
    get companeys_create_url
    assert_response :success
  end

  test "should get index" do
    get companeys_index_url
    assert_response :success
  end

  test "should get edite" do
    get companeys_edite_url
    assert_response :success
  end

  test "should get update" do
    get companeys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get companeys_destroy_url
    assert_response :success
  end

end
