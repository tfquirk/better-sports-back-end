class Api::V1::GamesController < ApplicationController

  def index
    @games = GamesSerializer.new(Game.all).serialized_json
    render json: @games, status: :ok
  end

  def show
    @game = GamesSerializer.new(Game.find(params[:id])).serialized_json
    render json: @game, status: :ok
  end

end
