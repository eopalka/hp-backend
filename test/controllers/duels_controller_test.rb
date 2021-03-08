require 'test_helper'

class DuelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duel = duels(:one)
  end

  test "should get index" do
    get duels_url, as: :json
    assert_response :success
  end

  test "should create duel" do
    assert_difference('Duel.count') do
      post duels_url, params: { duel: { score: @duel.score } }, as: :json
    end

    assert_response 201
  end

  test "should show duel" do
    get duel_url(@duel), as: :json
    assert_response :success
  end

  test "should update duel" do
    patch duel_url(@duel), params: { duel: { score: @duel.score } }, as: :json
    assert_response 200
  end

  test "should destroy duel" do
    assert_difference('Duel.count', -1) do
      delete duel_url(@duel), as: :json
    end

    assert_response 204
  end
end
