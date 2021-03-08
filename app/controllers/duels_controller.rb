class DuelsController < ApplicationController
  before_action :set_duel, only: [:show, :update, :destroy]

  # GET /duels
  def index
    @duels = Duel.all

    render json: @duels
  end

  # GET /duels/1
  def show
    render json: @duel
  end

  # POST /duels
  def create
    @duel = Duel.new(duel_params)

    if @duel.save
      render json: @duel, status: :created, location: @duel
    else
      render json: @duel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /duels/1
  def update
    if @duel.update(duel_params)
      render json: @duel
    else
      render json: @duel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /duels/1
  def destroy
    @duel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duel
      @duel = Duel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def duel_params
      params.require(:duel).permit(:score)
    end
end
