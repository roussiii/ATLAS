class Booking < ApplicationRecord
  has_many :destinations
  has_many :spaceships
end
