class SkateboardersController < ApplicationController
  before_action :set_skateboarder, only: [:show, :update, :destroy]

  # GET /skateboarders
  def index
    @skateboarders = Skateboarder.all

    render json: @skateboarders
  end

  # GET /skateboarders/1
  def show
    render json: @skateboarder
  end

  # POST /skateboarders
  def create
    @skateboarder = Skateboarder.new(skateboarder_params)

    if @skateboarder.save
      render json: @skateboarder, status: :created, location: @skateboarder
    else
      render json: @skateboarder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skateboarders/1
  def update
    if @skateboarder.update(skateboarder_params)
      render json: @skateboarder
    else
      render json: @skateboarder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skateboarders/1
  def destroy
    @skateboarder.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skateboarder
      @skateboarder = Skateboarder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skateboarder_params
      params.require(:skateboarder).permit(:name, :hometown, :style, :biography, :image)
    end
end
