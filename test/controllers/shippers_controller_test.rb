require "test_helper"

class ShippersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shippers_new_url
    assert_response :success
  end

  test "should get create" do
    get shippers_create_url
    assert_response :success
  end

  test "should get index" do
    get shippers_index_url
    assert_response :success
  end

  test "should get edit" do
    get shippers_edit_url
    assert_response :success
  end

  test "should get update" do
    get shippers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get shippers_destroy_url
    assert_response :success
  end
end
