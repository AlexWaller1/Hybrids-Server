require "test_helper"

class SkateparksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skatepark = skateparks(:one)
  end

  test "should get index" do
    get skateparks_url, as: :json
    assert_response :success
  end

  test "should create skatepark" do
    assert_difference('Skatepark.count') do
      post skateparks_url, params: { skatepark: { fetures: @skatepark.fetures, image: @skatepark.image, location: @skatepark.location, name: @skatepark.name } }, as: :json
    end

    assert_response 201
  end

  test "should show skatepark" do
    get skatepark_url(@skatepark), as: :json
    assert_response :success
  end

  test "should update skatepark" do
    patch skatepark_url(@skatepark), params: { skatepark: { fetures: @skatepark.fetures, image: @skatepark.image, location: @skatepark.location, name: @skatepark.name } }, as: :json
    assert_response 200
  end

  test "should destroy skatepark" do
    assert_difference('Skatepark.count', -1) do
      delete skatepark_url(@skatepark), as: :json
    end

    assert_response 204
  end
end
