class Vehicle < ApplicationRecord
  belongs_to :model, class_name: 'VehicleModel', foreign_key: 'vehicle_model_id'
  has_one :brand, through: :model

  validates :year, {
    presence: true
  }

  validates :mileage, {
    presence: true
  }

  validates :price, {
    presence: true
  }
end
