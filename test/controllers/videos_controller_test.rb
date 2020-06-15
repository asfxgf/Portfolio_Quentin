require 'test_helper'

class VideosControllerTest < ActionDispatch::IntegrationTest
  test "should get title:" do
    get videos_title:_url
    assert_response :success
  end

  test "should get string" do
    get videos_string_url
    assert_response :success
  end

  test "should get description:" do
    get videos_description:_url
    assert_response :success
  end

  test "should get string" do
    get videos_string_url
    assert_response :success
  end

  test "should get url:" do
    get videos_url:_url
    assert_response :success
  end

  test "should get string" do
    get videos_string_url
    assert_response :success
  end

end
