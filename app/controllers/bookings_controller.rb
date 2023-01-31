class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
    @destinations = Destination.all
  end

  def bookings
    @bookingsall = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.price = @spaceships.price + @destinations.price
    @booking.pax = 1
    @booking.payload = 10
    @booking.user_id = current_user.id
    @booking.destination_id = 2
    @booking.spaceship_id = 2
    # <li><%= @destination = Destination.find(params[:destination_id]) %></li>
    # @booking.destination_id = @destination.id
    # @booking.booking_price = @destination.price #review price calculation // no price in destination model
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      redirect_to root_path
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking[:id])
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:departure_date, :return_date, :price, :pax, :payload, :destination_id)
  end
end
