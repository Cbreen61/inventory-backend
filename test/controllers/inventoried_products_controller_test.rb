require "test_helper"

class InventoriedProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventoried_product = inventoried_products(:one)
  end

  test "should get index" do
    get inventoried_products_url, as: :json
    assert_response :success
  end

  test "should create inventoried_product" do
    assert_difference('InventoriedProduct.count') do
      post inventoried_products_url, params: { inventoried_product: { cost: @inventoried_product.cost, inventory_id: @inventoried_product.inventory_id, product_id: @inventoried_product.product_id, quantity: @inventoried_product.quantity } }, as: :json
    end

    assert_response 201
  end

  test "should show inventoried_product" do
    get inventoried_product_url(@inventoried_product), as: :json
    assert_response :success
  end

  test "should update inventoried_product" do
    patch inventoried_product_url(@inventoried_product), params: { inventoried_product: { cost: @inventoried_product.cost, inventory_id: @inventoried_product.inventory_id, product_id: @inventoried_product.product_id, quantity: @inventoried_product.quantity } }, as: :json
    assert_response 200
  end

  test "should destroy inventoried_product" do
    assert_difference('InventoriedProduct.count', -1) do
      delete inventoried_product_url(@inventoried_product), as: :json
    end

    assert_response 204
  end
end
