class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

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
  end
end
