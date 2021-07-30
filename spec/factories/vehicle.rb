FactoryBot.define do
  factory :vehicle, class: 'Vehicle' do
    model { create(:vehicle_model) }
    year { '2020' }
    mileage { 10000 }
    price { 10000 }
  end
end
