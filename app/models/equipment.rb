class Equipment < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :daily_price, presence: true
  validates :category, presence: true
  validates :photo, presence: true
  def state_icon
    case state
    when 'New'
      'fas fa-star' + ' text-warning'
    when 'Used'
      'fas fa-recycle' + ' text-success'
    when 'Decayed'
      'fas fa-skull-crossbones' ' text-danger'
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    ["category", "created_at", "daily_price", "description", "id", "state", "title", "updated_at", "user_id"]
  end


end
