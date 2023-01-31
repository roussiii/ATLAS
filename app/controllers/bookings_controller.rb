class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def bookings
    @bookingsall = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @booking = Booking.where(booking_id = @booking.id)
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @destination = Destination.find(params[:destination_id])
    # @booking.price = 100
    # @booking.pax = 1
    # @booking.payload = 10
    # @booking.user_id = current_user.id
    # @booking.destination_id = @destination.id
    # @booking.booking_price = @destination.price #review price calculation // no price in destination model
    if @booking.save
      redirect_to bookings_path
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
    raise
    params.require(:booking).permit(:departure_date, :return_date)
    raise
  end
end
