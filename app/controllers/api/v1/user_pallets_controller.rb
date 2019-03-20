class Api::V1::UserPalletsController < ApplicationController
  before_action :find_user_pallet, only: [:show, :destroy]

  def index
    @user_pallets = UserPallet.all
    render json: @user_pallets, status: :ok
  end

  def create
    @user_pallet = UserPallet.create(user_pallet_params)
    render json: @user_pallet, status: :ok
  end

  def show
    render json: @user_pallet, status: :ok
  end

  def destroy
    @user_pallet.destroy
  end

  private

  def user_pallet_params
    params.require(:user_pallet).permit(:user_id, :pallet_id)
  end

  def find_user_pallet
    @user_pallet = UserPallet.find(params[:id])
  end
end
