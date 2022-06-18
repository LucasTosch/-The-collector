class Game < ApplicationRecord
  attr_accessor :name

  has_many :user_games, dependent: :destroy
  has_many :users, through: :user_games
end
