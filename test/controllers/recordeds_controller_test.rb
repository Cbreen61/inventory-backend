require "test_helper"

class RecordedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recorded = recordeds(:one)
  end

  test "should get index" do
    get recordeds_url, as: :json
    assert_response :success
  end

  test "should create recorded" do
    assert_difference('Recorded.count') do
      post recordeds_url, params: { recorded: { cost: @recorded.cost, inventory_id: @recorded.inventory_id, product: @recorded.product, quantity: @recorded.quantity } }, as: :json
    end

    assert_response 201
  end

  test "should show recorded" do
    get recorded_url(@recorded), as: :json
    assert_response :success
  end

  test "should update recorded" do
    patch recorded_url(@recorded), params: { recorded: { cost: @recorded.cost, inventory_id: @recorded.inventory_id, product: @recorded.product, quantity: @recorded.quantity } }, as: :json
    assert_response 200
  end

  test "should destroy recorded" do
    assert_difference('Recorded.count', -1) do
      delete recorded_url(@recorded), as: :json
    end

    assert_response 204
  end
end
