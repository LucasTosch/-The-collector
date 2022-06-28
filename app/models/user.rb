class User < ApplicationRecord
  has_one_attached :image
  has_many :user_games, dependent: :destroy
  has_many :games, through: :user_games
  has_many :messages, dependent: :destroy
  has_many :player_bookings, class_name: 'Booking', foreign_key: :player_id
  has_many :creator_bookings, class_name: 'Booking', foreign_key: :creator_id
  has_many :bookings
  validates :username, presence: true
  validates :address, presence: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
