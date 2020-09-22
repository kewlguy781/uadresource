require 'test_helper'

class Api::Sample2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_sample2_index_url
    assert_response :success
  end

  test "should get show" do
    get api_sample2_show_url
    assert_response :success
  end

  test "should get create" do
    get api_sample2_create_url
    assert_response :success
  end

  test "should get update" do
    get api_sample2_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_sample2_destroy_url
    assert_response :success
  end

end
