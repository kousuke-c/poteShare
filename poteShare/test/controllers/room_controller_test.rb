require 'test_helper'

class RoomControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get room_new_url
    assert_response :success
  end

  test "should get index" do
    get room_index_url
    assert_response :success
  end

  test "should get posts" do
    get room_posts_url
    assert_response :success
  end

  test "should get search_room" do
    get room_search_room_url
    assert_response :success
  end

  test "should get show" do
    get room_show_url
    assert_response :success
  end

end
