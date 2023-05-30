class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_equipment, only: [:new, :create]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @booking.equipment = @equipment
    if @booking.save
      redirect_to equipment_booking_path(@equipment, @booking), notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def accept
    booking = Booking.find(params[:id])
    booking.update(status: true)
    redirect_to booking_path(booking)
  end

  def decline
    booking = Booking.find(params[:id])
    booking.update(status: false)
    redirect_to booking_path(booking)
  end

  private

  def set_equipment
    @equipment = Equipment.find(params[:equipment_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
