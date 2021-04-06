class Api::V1::InventoriedProductsController < ApplicationController
  before_action :set_inventoried_product, only: [:show, :update, :destroy]

  # GET /inventoried_products
  def index
    @inventoried_products = InventoriedProduct.all

    render json: @inventoried_products
  end

  # GET /inventoried_products/1
  def show
    render json: @inventoried_product
  end

  # POST /inventoried_products
  def create
    @inventoried_product = InventoriedProduct.new(inventoried_product_params)

    if @inventoried_product.save
      render json: @inventoried_product, status: :created, location: @inventoried_product
    else
      render json: @inventoried_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventoried_products/1
  def update
    if @inventoried_product.update(inventoried_product_params)
      render json: @inventoried_product
    else
      render json: @inventoried_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inventoried_products/1
  def destroy
    @inventoried_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventoried_product
      @inventoried_product = InventoriedProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventoried_product_params
      params.require(:inventoried_product).permit(:product_id, :inventory_id, :quantity, :cost)
    end
end
