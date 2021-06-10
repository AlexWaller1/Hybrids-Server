require "test_helper"

class SkatebaordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skatebaorder = skatebaorders(:one)
  end

  test "should get index" do
    get skatebaorders_url, as: :json
    assert_response :success
  end

  test "should create skatebaorder" do
    assert_difference('Skatebaorder.count') do
      post skatebaorders_url, params: { skatebaorder: { biography: @skatebaorder.biography, hometown: @skatebaorder.hometown, image: @skatebaorder.image, name: @skatebaorder.name, style: @skatebaorder.style } }, as: :json
    end

    assert_response 201
  end

  test "should show skatebaorder" do
    get skatebaorder_url(@skatebaorder), as: :json
    assert_response :success
  end

  test "should update skatebaorder" do
    patch skatebaorder_url(@skatebaorder), params: { skatebaorder: { biography: @skatebaorder.biography, hometown: @skatebaorder.hometown, image: @skatebaorder.image, name: @skatebaorder.name, style: @skatebaorder.style } }, as: :json
    assert_response 200
  end

  test "should destroy skatebaorder" do
    assert_difference('Skatebaorder.count', -1) do
      delete skatebaorder_url(@skatebaorder), as: :json
    end

    assert_response 204
  end
end
