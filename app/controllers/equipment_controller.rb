class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show]

  def index
    @equipments = Equipment.all
    @markers = @equipments.geocoded.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {equipment: equipment})
      }
    end
    @q = Equipment.ransack(params[:q])
    @equipments = @q.result(distinct: true)
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @user = current_user
    @equipment.user = @user
    if @equipment.save
      redirect_to equipment_path(@equipment), notice: 'Equipment was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    @markers = [{
        lat: @equipment.latitude,
        lng: @equipment.longitude
      }]

  end


  private

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_params
    params.require(:equipment).permit(:title, :description, :category, :state, :daily_price, :photo, :address)
  end
end
