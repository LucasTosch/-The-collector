class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :sender, foreign_key: :sender_id, class_name: "User", optional: true
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User", optional: true
end
