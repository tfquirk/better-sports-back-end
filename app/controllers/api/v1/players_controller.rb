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

    team_id = request.headers["teamId"]
    @players = Player.where(team_id: team_id)
    # byebug

    render json: PlayersSerializer.new(@players).serialized_json, status: :ok
  end

end
