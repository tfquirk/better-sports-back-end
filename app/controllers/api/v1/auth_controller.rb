class Api::V1::AuthController < ApplicationController

  def signup_user
    @user = User.new(auth_create_user_params)

    if @user.save
      token = JWT.encode({identifier: @user.id}, ENV["PLAY_IT_SAFE"])
      Account.create(user_id: @user.id, balance: "0", starting_balance: "0")

      render json: {user: UsersSerializer.new(@user).serialized_json, token: token}, status: :ok
    else
      render json: {error: "Unable to create account. Please try again later or call our customer service number.", errors: @user.errors.full_messages}, status: :ok
    end

  end

  def login_user
    @user = User.find_by(email: params["email"])

    if @user && @user.authenticate(params[:password])
      token = JWT.encode({identifier: @user.id}, ENV["PLAY_IT_SAFE"])

      render json: {user: {attributes: {first_name: @user.first_name, last_name: @user.last_name, accounts: @user.accounts, bets: @user.bets}}, token: token}, status: :ok
    else
      render json: {error: "Account not found."}, status: :ok
    end

  end

  def auto_login
    id = JWT.decode(request.headers["Authorization"], ENV["PLAY_IT_SAFE"])[0]
    @user = User.find(id["identifier"])

    if @user
      render json: UsersSerializer.new(@user).serialized_json, status: :ok
    else
      render json: {error: "Account not found. Please login."}, status: :ok
    end
  end

  private

  def auth_create_user_params
    params.require(:auth).permit(:first_name, :last_name, :email, :password)
  end
end
