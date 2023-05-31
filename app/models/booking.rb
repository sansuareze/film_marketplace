class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment
  validates :start_date, :end_date, presence: true, uniqueness: {scope: :equipment, message: "date already taken"}
end
