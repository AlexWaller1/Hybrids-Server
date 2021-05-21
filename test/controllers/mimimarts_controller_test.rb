require "test_helper"

class MimimartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mimimart = mimimarts(:one)
  end

  test "should get index" do
    get mimimarts_url, as: :json
    assert_response :success
  end

  test "should create mimimart" do
    assert_difference('Mimimart.count') do
      post mimimarts_url, params: { mimimart: { address: @mimimart.address, description: @mimimart.description, image: @mimimart.image, name: @mimimart.name, sodamachine: @mimimart.sodamachine, state: @mimimart.state } }, as: :json
    end

    assert_response 201
  end

  test "should show mimimart" do
    get mimimart_url(@mimimart), as: :json
    assert_response :success
  end

  test "should update mimimart" do
    patch mimimart_url(@mimimart), params: { mimimart: { address: @mimimart.address, description: @mimimart.description, image: @mimimart.image, name: @mimimart.name, sodamachine: @mimimart.sodamachine, state: @mimimart.state } }, as: :json
    assert_response 200
  end

  test "should destroy mimimart" do
    assert_difference('Mimimart.count', -1) do
      delete mimimart_url(@mimimart), as: :json
    end

    assert_response 204
  end
end
