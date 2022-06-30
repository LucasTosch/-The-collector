class Booking < ApplicationRecord
  validates :date, presence: true
  belongs_to :game
  belongs_to :creator, class_name: "User"
  belongs_to :player, class_name: "User"
end
