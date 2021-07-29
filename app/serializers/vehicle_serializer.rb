class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :model_name, :brand_name, :year, :mileage, :price

  def brand_name
    object.brand.name
  end

  def model_name
    object.model.name
  end
end
