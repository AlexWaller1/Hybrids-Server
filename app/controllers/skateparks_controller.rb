class SkateparksController < ApplicationController
  before_action :set_skatepark, only: [:show, :update, :destroy]

  # GET /skateparks
  def index
    @skateparks = Skatepark.all

    render json: @skateparks
  end

  # GET /skateparks/1
  def show
    render json: @skatepark
  end

  # POST /skateparks
  def create
    @skatepark = Skatepark.new(skatepark_params)

    if @skatepark.save
      render json: @skatepark, status: :created, location: @skatepark
    else
      render json: @skatepark.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skateparks/1
  def update
    if @skatepark.update(skatepark_params)
      render json: @skatepark
    else
      render json: @skatepark.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skateparks/1
  def destroy
    @skatepark.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skatepark
      @skatepark = Skatepark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skatepark_params
      params.require(:skatepark).permit(:name, :location, :features, :image)
    end
end
