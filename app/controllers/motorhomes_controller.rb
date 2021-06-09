class MotorhomesController < ApplicationController
  before_action :set_motorhome, only: [:show, :update, :destroy]

  # GET /motorhomes
  def index
    @motorhomes = Motorhome.all

    render json: @motorhomes
  end

  # GET /motorhomes/1
  def show
    render json: @motorhome
  end

  # POST /motorhomes
  def create
    @motorhome = Motorhome.new(motorhome_params)

    if @motorhome.save
      render json: @motorhome, status: :created, location: @motorhome
    else
      render json: @motorhome.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /motorhomes/1
  def update
    if @motorhome.update(motorhome_params)
      render json: @motorhome
    else
      render json: @motorhome.errors, status: :unprocessable_entity
    end
  end

  # DELETE /motorhomes/1
  def destroy
    @motorhome.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motorhome
      @motorhome = Motorhome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def motorhome_params
      params.require(:motorhome).permit(:model, :year, :mileage, :color, :image)
    end
end
