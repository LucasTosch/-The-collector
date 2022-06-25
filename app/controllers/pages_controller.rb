class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def fiable
    @users = User.all
  end

  def echange
    @users = User.all
  end

  def duel
    @users = User.all.where(player: true)
    if params[:game] == "Yugioh"
      @users = UserGame.where(game_id: 16).map { |user_game| User.find(user_game.user_id) }
    elsif params[:game] == "Pokemon"
      @users = UserGame.where(game_id: 17).map { |user_game| User.find(user_game.user_id) }
    elsif params[:game] == "Magic The Gathering"
      @users = UserGame.where(game_id: 18).map { |user_game| User.find(user_game.user_id) }
    end
  end
end
