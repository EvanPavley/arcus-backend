class Api::V1::PalletsController < ApplicationController
  before_action :find_pallet, only: [:show]

  def index
    @pallets = Pallet.all
    render json: @pallets, status: :ok
  end

  def create
    @pallet = Pallet.create(pallet_params)
    render json: @pallet, status: :ok
  end

  def show
    render json: @pallet, status: :ok
  end

  private

  def pallet_params
    params.require(:pallet).permit(:one, :two, :three, :four, :five)
  end

  def find_pallet
    @pallet = Pallet.find(params[:id])
  end
end
