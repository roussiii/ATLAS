class Destination < ApplicationRecord
  has_many :spaceships
  has_many :bookings, through: :spaceships
  has_one_attached :photo

  def total
    destination.price * quantity
  end
end
