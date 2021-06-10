require "test_helper"

class SkateboardersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skateboarder = skateboarders(:one)
  end

  test "should get index" do
    get skateboarders_url, as: :json
    assert_response :success
  end

  test "should create skateboarder" do
    assert_difference('Skateboarder.count') do
      post skateboarders_url, params: { skateboarder: { biography: @skateboarder.biography, hometown: @skateboarder.hometown, image: @skateboarder.image, name: @skateboarder.name, style: @skateboarder.style } }, as: :json
    end

    assert_response 201
  end

  test "should show skateboarder" do
    get skateboarder_url(@skateboarder), as: :json
    assert_response :success
  end

  test "should update skateboarder" do
    patch skateboarder_url(@skateboarder), params: { skateboarder: { biography: @skateboarder.biography, hometown: @skateboarder.hometown, image: @skateboarder.image, name: @skateboarder.name, style: @skateboarder.style } }, as: :json
    assert_response 200
  end

  test "should destroy skateboarder" do
    assert_difference('Skateboarder.count', -1) do
      delete skateboarder_url(@skateboarder), as: :json
    end

    assert_response 204
  end
end
