class PunitsController < ApplicationController
  before_action :set_punit, only: [:show, :update, :destroy]

  # GET /punits
  def index
    @punits = Punit.all

    render json: @punits
  end

  # GET /punits/1
  def show
    render json: @punit
  end

  # POST /punits
  def create
    @punit = Punit.new(punit_params)

    if @punit.save
      render json: @punit, status: :created, location: @punit
    else
      render json: @punit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /punits/1
  def update
    if @punit.update(punit_params)
      render json: @punit
    else
      render json: @punit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /punits/1
  def destroy
    @punit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punit
      @punit = Punit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def punit_params
      params.require(:punit).permit(:price, :amount, :product_id)
    end
end
