class VehicleModelSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :vehicle_brand
end
