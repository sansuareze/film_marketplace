class Equipment < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :daily_price, presence: true
  validates :category, presence: true
  validates :photo, presence: true
end
