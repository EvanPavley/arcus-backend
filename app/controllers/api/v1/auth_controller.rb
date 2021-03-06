class Api::V1::AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      jwt = encode_token(user.id)
      render json: {user: UserSerializer.new(user), jwt: jwt}
    else
      render json: {errors: "Wrong username or password"}
    end

  end

  def auto_login
    if logged_in
      render json: curr_user
    else
      render json: {errors: "Wrong username or password"}
    end
  end

end
