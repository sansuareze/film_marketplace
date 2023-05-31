class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update_accept, :update_decline]
  before_action :set_equipment, only: [:new, :create, :update_accept, :update_decline]

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

  def update_accept
    @booking.status = "accepted"
    @booking.save
  end

  def update_decline
    @booking.status = "declined"
    @booking.save
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
