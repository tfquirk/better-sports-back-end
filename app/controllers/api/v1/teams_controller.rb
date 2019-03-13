class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all
    render json: @teams, status: :ok
  end

  def show
    @team = Team.find(params[:id])
    render json: @team, status: :ok
  end

end
