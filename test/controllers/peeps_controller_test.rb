require 'test_helper'

class PeepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peeps_index_url
    assert_response :success
  end

  test "should get show" do
    get peeps_show_url
    assert_response :success
  end

  test "should get edit" do
    get peeps_edit_url
    assert_response :success
  end

  test "should get create" do
    get peeps_create_url
    assert_response :success
  end

end
