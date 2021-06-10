class SkatebaordersController < ApplicationController
  before_action :set_skatebaorder, only: [:show, :update, :destroy]

  # GET /skatebaorders
  def index
    @skatebaorders = Skatebaorder.all

    render json: @skatebaorders
  end

  # GET /skatebaorders/1
  def show
    render json: @skatebaorder
  end

  # POST /skatebaorders
  def create
    @skatebaorder = Skatebaorder.new(skatebaorder_params)

    if @skatebaorder.save
      render json: @skatebaorder, status: :created, location: @skatebaorder
    else
      render json: @skatebaorder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skatebaorders/1
  def update
    if @skatebaorder.update(skatebaorder_params)
      render json: @skatebaorder
    else
      render json: @skatebaorder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skatebaorders/1
  def destroy
    @skatebaorder.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skatebaorder
      @skatebaorder = Skatebaorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skatebaorder_params
      params.require(:skatebaorder).permit(:name, :hometown, :style, :biography, :image)
    end
end
