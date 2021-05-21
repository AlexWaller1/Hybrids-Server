class MimimartsController < ApplicationController
  before_action :set_mimimart, only: [:show, :update, :destroy]

  # GET /mimimarts
  def index
    @mimimarts = Mimimart.all

    render json: @mimimarts
  end

  # GET /mimimarts/1
  def show
    render json: @mimimart
  end

  # POST /mimimarts
  def create
    @mimimart = Mimimart.new(mimimart_params)

    if @mimimart.save
      render json: @mimimart, status: :created, location: @mimimart
    else
      render json: @mimimart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mimimarts/1
  def update
    if @mimimart.update(mimimart_params)
      render json: @mimimart
    else
      render json: @mimimart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mimimarts/1
  def destroy
    @mimimart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mimimart
      @mimimart = Mimimart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mimimart_params
      params.require(:mimimart).permit(:name, :address, :sodamachine, :description, :state, :image)
    end
end
