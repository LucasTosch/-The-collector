class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def fiable
    @users = User.all
    if params[:type] == "player"
      @users = User.all.where(player: true)
    elsif params[:type] == "trader"
      @users = User.all.where(trader: true)
    end
  end

  def echange
    @traders = User.all.where(trader: true)
    if params[:game] == "Yugioh"
      @traders = UserGame.where(game_id: 22).map { |user_game| User.find(user_game.user_id) }
    elsif params[:game] == "Pokemon"
      @traders = UserGame.where(game_id: 23).map { |user_game| User.find(user_game.user_id) }
    elsif params[:game] == "Magic The Gathering"
      @traders = UserGame.where(game_id: 24).map { |user_game| User.find(user_game.user_id) }
    end
  end

  def duel
    @players = User.all.where(player: true)
    if params[:game] == "Yugioh"
      @players = UserGame.where(game_id: 22).map { |user_game| User.find(user_game.user_id) }
    elsif params[:game] == "Pokemon"
      @players = UserGame.where(game_id: 23).map { |user_game| User.find(user_game.user_id) }
    elsif params[:game] == "Magic The Gathering"
      @players = UserGame.where(game_id: 24).map { |user_game| User.find(user_game.user_id) }
    end
  end
end
