class Api::V1::AuthController < ApplicationController

  def create_user
    @user = User.new(auth_create_user_params)

    if @user.save
      render json: UsersSerializer.new(@user).serialized_json, status: :ok
    else
      render json: {error: "Unable to create account. Please try again later or
        call our customer service number."}, status: :ok
    end

  end

  private

  def auth_create_user_params
    params.require(:auth).permit(:first_name, :last_name, :email, :password)
  end
end
