require "test_helper"

class MinimartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minimart = minimarts(:one)
  end

  test "should get index" do
    get minimarts_url, as: :json
    assert_response :success
  end

  test "should create minimart" do
    assert_difference('Minimart.count') do
      post minimarts_url, params: { minimart: { address: @minimart.address, description: @minimart.description, image: @minimart.image, name: @minimart.name, sodamachine: @minimart.sodamachine, state: @minimart.state } }, as: :json
    end

    assert_response 201
  end

  test "should show minimart" do
    get minimart_url(@minimart), as: :json
    assert_response :success
  end

  test "should update minimart" do
    patch minimart_url(@minimart), params: { minimart: { address: @minimart.address, description: @minimart.description, image: @minimart.image, name: @minimart.name, sodamachine: @minimart.sodamachine, state: @minimart.state } }, as: :json
    assert_response 200
  end

  test "should destroy minimart" do
    assert_difference('Minimart.count', -1) do
      delete minimart_url(@minimart), as: :json
    end

    assert_response 204
  end
end
