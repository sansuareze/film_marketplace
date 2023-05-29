class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @user = User.find(current_user)
    @booking.user = @user
    if @booking.save
      redirect_to booking_path, notice: 'Booking was successfully created.'
    else
      render :new
  end

  def show
    @booking = Booking.find(set_booking)
  end

  end
  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status)
  end
end
