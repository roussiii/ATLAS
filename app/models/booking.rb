class Booking < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  has_many :destinations
  validates :destination_id, presence: true
  validates :user_id, presence: true
end
