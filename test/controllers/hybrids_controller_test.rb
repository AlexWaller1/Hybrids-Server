require "test_helper"

class HybridsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hybrid = hybrids(:one)
  end

  test "should get index" do
    get hybrids_url, as: :json
    assert_response :success
  end

  test "should create hybrid" do
    assert_difference('Hybrid.count') do
      post hybrids_url, params: { hybrid: { image: @hybrid.image, name: @hybrid.name, origin: @hybrid.origin, personality: @hybrid.personality, species: @hybrid.species } }, as: :json
    end

    assert_response 201
  end

  test "should show hybrid" do
    get hybrid_url(@hybrid), as: :json
    assert_response :success
  end

  test "should update hybrid" do
    patch hybrid_url(@hybrid), params: { hybrid: { image: @hybrid.image, name: @hybrid.name, origin: @hybrid.origin, personality: @hybrid.personality, species: @hybrid.species } }, as: :json
    assert_response 200
  end

  test "should destroy hybrid" do
    assert_difference('Hybrid.count', -1) do
      delete hybrid_url(@hybrid), as: :json
    end

    assert_response 204
  end
end
