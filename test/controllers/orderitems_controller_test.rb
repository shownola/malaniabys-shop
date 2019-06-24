require 'test_helper'

class OrderitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get orderitems_create_url
    assert_response :success
  end

  test "should get update" do
    get orderitems_update_url
    assert_response :success
  end

  test "should get destroy" do
    get orderitems_destroy_url
    assert_response :success
  end

end
