class Game < ApplicationRecord
  has_many :user_games, dependent: :destroy
  has_many :users, through: :user_games
  has_many :bookings, dependent: :destroy
end
