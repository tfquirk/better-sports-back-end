class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players, status: :ok
  end

  def show
    @player = PlayersSerializer.new(Player.find(params[:id])).serialized_json
    render json: @player, status: :ok
  end

  def team_players
    team_id = request.headers["teamId"]
    @players = Player.where(team_id: team_id)

    render json: PlayersSerializer.new(@players).serialized_json, status: :ok
  end

end
