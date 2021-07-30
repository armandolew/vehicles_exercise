FactoryBot.define do
  factory :vehicle_brand, class: 'VehicleBrand' do
    name { Faker::Vehicle.manufacture }
  end
end
