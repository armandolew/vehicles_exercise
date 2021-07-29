class VehicleModel < ApplicationRecord
  belongs_to :brand, class_name: 'VehicleBrand', foreign_key: 'vehicle_brand_id'
  has_many :vehicles

  validates :name, {
    presence: true,
    uniqueness: true
  }
end
