require "rails_helper"
RSpec.describe Api::V1::VehiclesController, type: :controller do
  let(:brand){ create(:vehicle_brand) }
  let(:model){ create(:vehicle_model, brand: brand) }

  describe 'POST #create' do
    before(:all) do
      DatabaseCleaner.clean
    end

    it 'returns http success' do
      post :create, params: { model: model.name, brand: brand.name, year: Faker::Vehicle.year, mileage: Faker::Vehicle.mileage(min: 10, max: 250000), price: Faker::Number.number(digits: 5) }
      expect(response).to have_http_status(:success)
    end

    it 'returns failed http response' do
      post :create, params: { model: '', brand: brand.name, year: Faker::Vehicle.year, mileage: Faker::Vehicle.mileage(min: 10, max: 250000), price: Faker::Number.number(digits: 5) }
      expect(response).to have_http_status(400)
    end
  end

  describe 'GET #index' do
    before do
      create(:vehicle, brand: brand, model: model)
    end

    it 'returns only 1 record' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
