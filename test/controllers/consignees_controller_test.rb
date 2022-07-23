require "test_helper"

class ConsigneesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get consignees_new_url
    assert_response :success
  end

  test "should get create" do
    get consignees_create_url
    assert_response :success
  end

  test "should get index" do
    get consignees_index_url
    assert_response :success
  end

  test "should get edit" do
    get consignees_edit_url
    assert_response :success
  end

  test "should get update" do
    get consignees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get consignees_destroy_url
    assert_response :success
  end
end
