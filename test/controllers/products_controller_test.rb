require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_index_url
    assert_response :success
  end

  test "should get create" do
    get products_create_url
    assert_response :success
  end

  test "should get delete" do
    get products_delete_url
    assert_response :success
  end

  test "should get update" do
    get products_update_url
    assert_response :success
  end

  test "should get show" do
    get products_show_url
    assert_response :success
  end

  test "should get new" do
    get products_new_url
    assert_response :success
  end
end
