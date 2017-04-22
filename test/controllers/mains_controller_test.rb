require 'test_helper'

class MainsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mains_index_url
    assert_response :success
  end

  test "should get show" do
    get mains_show_url
    assert_response :success
  end

  test "should get new" do
    get mains_new_url
    assert_response :success
  end

  test "should get edit" do
    get mains_edit_url
    assert_response :success
  end

  test "should get delete" do
    get mains_delete_url
    assert_response :success
  end

end
