class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players, status: :ok
  end

  def show
    @player = Player.find(params[:id])
    render json: @player, status: :ok
  end

  def team_players

  end

end
