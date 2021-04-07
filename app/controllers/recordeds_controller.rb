class RecordedsController < ApplicationController
  before_action :set_recorded, only: [:show, :update, :destroy]

  # GET /recordeds
  def index
    @recordeds = Recorded.all

    render json: @recordeds
  end

  # GET /recordeds/1
  def show
    render json: @recorded
  end

  # POST /recordeds
  def create
    @recorded = Recorded.new(recorded_params)

    if @recorded.save
      render json: @recorded, status: :created, location: @recorded
    else
      render json: @recorded.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recordeds/1
  def update
    if @recorded.update(recorded_params)
      render json: @recorded
    else
      render json: @recorded.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recordeds/1
  def destroy
    @recorded.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recorded
      @recorded = Recorded.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recorded_params
      params.require(:recorded).permit(:product, :inventory_id, :quantity, :cost)
    end
end
