class TastingsController < ApplicationController
  before_action :set_tasting, only: [:show, :update, :destroy]

  # GET /tastings
  def index
    @tastings = Tasting.all

    render json: @tastings
  end

  # GET /tastings/1
  def show
    render json: @tasting
  end

  # POST /tastings
  def create
    @tasting = Tasting.new(tasting_params)

    if @tasting.save
      
      @flavors = params[:tasting][:flavors]

      puts "\n\n#{@flavors}\n\n"

      @flavors.each do |flavor_id| 
        @tasting.flavors << Flavor.find(flavor_id)
      end

      render json: @tasting, status: :created, location: @tasting
    else
      render json: @tasting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tastings/1
  def update
   
    if @tasting.update(tasting_params)
      
      @flavors = params[:tasting][:flavors]

      puts "@flavors is \n\n#{@flavors}\n\n"

      @flavors.each do |flavor_id| 
        @tasting.flavors << Flavor.find(flavor_id)
      end
      
      render json: @tasting
    else
      render json: @tasting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tastings/1
  def destroy
    @tasting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasting
      @tasting = Tasting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tasting_params
      params.require(:tasting).permit(:user_id, :tea_id, :flavors)
    end
end
