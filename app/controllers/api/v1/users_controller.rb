class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def create
    @user = User.create(
      username: params[:username],
      password: params[:password],
      email: params[:email],
    )
    jwt = encode_token(@user.id)
    render json: {user: UserSerializer.new(@user), jwt: jwt}
  end

  def show
    render json: @user, status: :ok
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
