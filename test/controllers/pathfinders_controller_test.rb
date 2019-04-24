require 'test_helper'

class PathfindersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pathfinder = pathfinders(:one)
  end

  test "should get index" do
    get pathfinders_url
    assert_response :success
  end

  test "should get new" do
    get new_pathfinder_url
    assert_response :success
  end

  test "should create pathfinder" do
    assert_difference('Pathfinder.count') do
      post pathfinders_url, params: { pathfinder: { birthday: @pathfinder.birthday, dni: @pathfinder.dni, last_name: @pathfinder.last_name, name: @pathfinder.name, unit_id: @pathfinder.unit_id } }
    end

    assert_redirected_to pathfinder_url(Pathfinder.last)
  end

  test "should show pathfinder" do
    get pathfinder_url(@pathfinder)
    assert_response :success
  end

  test "should get edit" do
    get edit_pathfinder_url(@pathfinder)
    assert_response :success
  end

  test "should update pathfinder" do
    patch pathfinder_url(@pathfinder), params: { pathfinder: { birthday: @pathfinder.birthday, dni: @pathfinder.dni, last_name: @pathfinder.last_name, name: @pathfinder.name, unit_id: @pathfinder.unit_id } }
    assert_redirected_to pathfinder_url(@pathfinder)
  end

  test "should destroy pathfinder" do
    assert_difference('Pathfinder.count', -1) do
      delete pathfinder_url(@pathfinder)
    end

    assert_redirected_to pathfinders_url
  end
end
