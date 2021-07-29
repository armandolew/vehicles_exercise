module Api
  module V1
    class VehiclesController < Api::Controller
      def create
        params.require(:model)
        params.require(:year)
        params.require(:mileage)
        params.require(:price)

        model = VehicleModel.find_by!(name: params.dig(:model))

        model.vehicles.create!(
          year:    params.dig(:year),
          mileage: params.dig(:mileage),
          price:   params.dig(:price)
        )

        head :created
      end

      def index
        vehicles = Vehicle.all

        vehicles = vehicles.includes(:model).where(model: { name: params.dig(:model_name) }) if params[:model_name].present?
        vehicles = vehicles.includes(model: :brand).where(brand: { name: params.dig(:brand_name) }) if params[:brand_name].present?
        vehicles = vehicles.where('year > ?', params[:year]) if params[:year].present?
        vehicles = vehicles.where('mileage < ?', params[:mileage]) if params[:mileage].present?
        vehicles = vehicles.where('price < ?', params[:price]) if params[:price].present?

        render json: vehicles, status: :ok
      end
    end
  end
end
