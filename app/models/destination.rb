class Destination < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  has_many :spaceships
  has_many :bookings, through: :spaceships

  def total
    destination.price * quantity
  end
end
