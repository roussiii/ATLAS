class Destination < ApplicationRecord
  has_many :spaceships
  has_many :bookings, through: :spaceships

  def total
    destination.price * quantity
  end
end
