class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def new
    @equipment = Equipment.new
    raise
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @user = User.find(current_user)
    @equipment.user = @user
    if @equipment.save
      redirect_to equipment_path, notice: 'Equipment was successfully created.'
    else
      render :new
  end

  def show
    @equipment = Equipment.find(set_equipment)
  end


  end
  private

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_params
    params.require(:equipment).permit(:title, :description, :category, :state, :daily_price)
  end
end
