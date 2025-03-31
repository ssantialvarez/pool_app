class PlayersController < ApplicationController
  # include Secured
  def show
    # render json: session[:userinfo]
  end

  def new
    player = Player.new
    render json: player
  end
end
