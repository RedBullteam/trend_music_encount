require 'test_helper'

class CmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cms_index_url
    assert_response :success
  end

  test "should get trend" do
    get cms_trend_url
    assert_response :success
  end

  test "should get search" do
    get cms_search_url
    assert_response :success
  end

end
