require 'test_helper'

class VisualizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visualization = visualizations(:one)
  end

  test "should get index" do
    get visualizations_url
    assert_response :success
  end

  test "should get new" do
    get new_visualization_url
    assert_response :success
  end

  test "should create visualization" do
    assert_difference('Visualization.count') do
      post visualizations_url, params: { visualization: { name: @visualization.name } }
    end

    assert_redirected_to visualization_url(Visualization.last)
  end

  test "should show visualization" do
    get visualization_url(@visualization)
    assert_response :success
  end

  test "should get edit" do
    get edit_visualization_url(@visualization)
    assert_response :success
  end

  test "should update visualization" do
    patch visualization_url(@visualization), params: { visualization: { name: @visualization.name } }
    assert_redirected_to visualization_url(@visualization)
  end

  test "should destroy visualization" do
    assert_difference('Visualization.count', -1) do
      delete visualization_url(@visualization)
    end

    assert_redirected_to visualizations_url
  end
end
