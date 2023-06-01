class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bookings = current_user.bookings
    # @equipment = equipment.find([:equipment_id])
    @equipment = current_user.equipment
  end
end
