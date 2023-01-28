class Booking < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  belongs_to :spaceship, foreign_key: "spaceship_id", class_name: "Spaceship"
  has_many :destinations
  has_many :spaceships, through: :destinations
  validates :destination_id, presence: true
  validates :user_id, presence: true
  validates :spaceship_id, presence: true
  validates_presence_of :departure_date, :return_date
  # validates :overlaps
  # validates :no_past_booking

  # To review later with package (destination.spaceship)
  def total
    destinations.to_a.sum {|destination| destination.total}
  end

  # Bookings cannot be in the past
  def no_past_booking
    if Date.today > departure_date.to_date || Time.now > departure_date.to_time
      errors.add(:departure_date, "cannot be in the past")
    elsif Date.today > return_date.to_date || Time.now > return_date.to_time
      errors.add(:return_date, "cannot be in the past")
    end
  end

  # Booking which overlaps
  def overlaps
  @bookings = Booking.where(spaceship_id: id)
  @bookings.each do |booking|
    if departure_date < booking.return_date && booking.departure_date < return_date
      errors.add(:overlaps, 'This spaceship is already booked')
    end
  end
end
end
