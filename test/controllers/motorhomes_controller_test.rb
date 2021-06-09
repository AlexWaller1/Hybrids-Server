require "test_helper"

class MotorhomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motorhome = motorhomes(:one)
  end

  test "should get index" do
    get motorhomes_url, as: :json
    assert_response :success
  end

  test "should create motorhome" do
    assert_difference('Motorhome.count') do
      post motorhomes_url, params: { motorhome: { color: @motorhome.color, image: @motorhome.image, mileage: @motorhome.mileage, model: @motorhome.model, year: @motorhome.year } }, as: :json
    end

    assert_response 201
  end

  test "should show motorhome" do
    get motorhome_url(@motorhome), as: :json
    assert_response :success
  end

  test "should update motorhome" do
    patch motorhome_url(@motorhome), params: { motorhome: { color: @motorhome.color, image: @motorhome.image, mileage: @motorhome.mileage, model: @motorhome.model, year: @motorhome.year } }, as: :json
    assert_response 200
  end

  test "should destroy motorhome" do
    assert_difference('Motorhome.count', -1) do
      delete motorhome_url(@motorhome), as: :json
    end

    assert_response 204
  end
end
