require 'test_helper'

class ReserveControllerTest < ActionDispatch::IntegrationTest
  test "should get room" do
    get reserve_room_url
    assert_response :success
  end

  test "should get comprete" do
    get reserve_comprete_url
    assert_response :success
  end

  test "should get confirm" do
    get reserve_confirm_url
    assert_response :success
  end

end
