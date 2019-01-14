class FlavorLikesController < ApplicationController
  before_action :set_flavor_like, only: [:show, :update, :destroy]

  # GET /flavor_likes
  def index
    @flavor_likes = FlavorLike.all

    render json: @flavor_likes
  end

  # GET /flavor_likes/1
  def show
    render json: @flavor_like
  end

  # POST /flavor_likes
  def create
    @flavor_like = FlavorLike.new(flavor_like_params)

    if @flavor_like.save
      render json: @flavor_like, status: :created, location: @flavor_like
    else
      render json: @flavor_like.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flavor_likes/1
  def update
    if @flavor_like.update(flavor_like_params)
      render json: @flavor_like
    else
      render json: @flavor_like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flavor_likes/1
  def destroy
    @flavor_like.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flavor_like
      @flavor_like = FlavorLike.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flavor_like_params
      params.require(:flavor_like).permit(:flavor_id, :tasting_id)
    end
end
