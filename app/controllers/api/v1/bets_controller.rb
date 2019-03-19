class Api::V1::BetsController < ApplicationController

  def create

    id = JWT.decode(request.headers["Authorization"], ENV["PLAY_IT_SAFE"])[0]["identifier"]
    @user = User.find(id)

    if @user
      @bet = Bet.create(user_id: @user.id, game_id: bet_params["game"],
        wager: bet_params["amount"], odds: bet_params["odds"],
        betType: bet_params["betType"]
      )

      render json: UsersSerializer.new(@user).serialized_json, status: :ok
    end

  end


  private

  def bet_params
    params.require(:bet).permit(:amount, :odds, :game, :betType)
  end
end
