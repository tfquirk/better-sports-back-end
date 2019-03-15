class Api::V1::TeamsController < ApplicationController

  def index
    @teams = TeamsSerializer.new(Team.all).serialized_json
    render json: @teams, status: :ok
  end

  def show
    @team = TeamsSerializer.new(Team.find(params[:id])).serialized_json
    render json: @team, status: :ok
  end

end
