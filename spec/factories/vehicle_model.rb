FactoryBot.define do
  factory :vehicle_model, class: 'VehicleModel' do
    brand { create(:vehicle_brand) }
    name { Faker::Vehicle.make_and_model }
  end
end
