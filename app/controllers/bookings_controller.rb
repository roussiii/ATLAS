class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def bookings
    @bookingsall = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @desintation = Destination.find(params[:destination_id])
    @booking.destination = @destination
    @booking.booking_price = @destination.price #review price calculation
    @booking.user_id = current_user.id
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
    params.require(:booking).permit(:departure_date, :return_date, :pax, :payload, :user_id, :destination_id, :spaceship_id)
  end
end
