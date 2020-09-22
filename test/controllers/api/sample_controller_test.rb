require 'test_helper'

class Api::SampleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_sample_index_url
    assert_response :success
  end

  test "should get show" do
    get api_sample_show_url
    assert_response :success
  end

  test "should get create" do
    get api_sample_create_url
    assert_response :success
  end

  test "should get update" do
    get api_sample_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_sample_destroy_url
    assert_response :success
  end

end
