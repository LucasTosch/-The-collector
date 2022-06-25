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
    @users = User.all
    if params[:query].present?
      sql_query = " \
      games.name ILIKE :query \
      "
      @users = User.joins(:games).where(sql_query, query: "%#{params[:query]}%")
      raise
    end
  end
end
