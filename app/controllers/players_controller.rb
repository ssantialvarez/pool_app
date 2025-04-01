class PlayersController < ApplicationController
  before_action :authorize
  def index
    render json: "All players."
  end

  def show
    # render json: session[:userinfo]
    render json: "Showing player."
  end

  def update
    render json: "Updating player."
  end

  def destroy
    render json: "Destroying player " + params[:id] + "."
  end

  def create
    player = Player.new
    render json: player
  end
end
