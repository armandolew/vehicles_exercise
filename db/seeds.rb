# Vehicle Brands
["VW", "Chevrolet", "Nissan"].each do |name|
  VehicleBrand.create(name: name)
end

# VehicleModels
brand = VehicleBrand.find_by(name: "VW")
[
  {
    vehicle_brand: brand,
    name: "JETTA",
  },
  {
    vehicle_brand: brand,
    name: "POLLO",
  },
  {
    vehicle_brand: brand,
    name: "GOLF",
  },
  {
    vehicle_brand: brand,
    name: "UP",
  },
].each do |vehicle_model|
  VehicleModel.create(vehicle_model)
end

brand = VehicleBrand.find_by(name: "Chevrolet")
[
  {
    vehicle_brand: brand,
    name: "TRAILBLAZER",
  },
  {
    vehicle_brand: brand,
    name: "SONIC",
  },
  {
    vehicle_brand: brand,
    name: "BOLT",
  },
  {
    vehicle_brand: brand,
    name: "BLAZER",
  },
].each do |vehicle_model|
  VehicleModel.create(vehicle_model)
end
brand = VehicleBrand.find_by(name: "Nissan")
[
  {
    vehicle_brand: brand,
    name: "KICKS",
  },
  {
    vehicle_brand: brand,
    name: "SENTRA",
  },
  {
    vehicle_brand: brand,
    name: "VERSA",
  },
  {
    vehicle_brand: brand,
    name: "MURANO",
  },
].each do |vehicle_model|
  VehicleModel.create(vehicle_model)
end
