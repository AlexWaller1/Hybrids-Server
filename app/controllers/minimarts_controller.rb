class MinimartsController < ApplicationController
  before_action :set_minimart, only: [:show, :update, :destroy]

  # GET /minimarts
  def index
    @minimarts = Minimart.all

    render json: @minimarts
  end

  # GET /minimarts/1
  def show
    render json: @minimart
  end

  # POST /minimarts
  def create
    @minimart = Minimart.new(minimart_params)

    if @minimart.save
      render json: @minimart, status: :created, location: @minimart
    else
      render json: @minimart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /minimarts/1
  def update
    if @minimart.update(minimart_params)
      render json: @minimart
    else
      render json: @minimart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /minimarts/1
  def destroy
    @minimart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minimart
      @minimart = Minimart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def minimart_params
      params.require(:minimart).permit(:name, :address, :sodamachine, :description, :state, :image)
    end
end
