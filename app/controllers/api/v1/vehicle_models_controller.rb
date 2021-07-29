module Api
  module V1
    class VehicleModelsController < Api::Controller
      def create
        params.require(:name)
        params.require(:brand)

        brand = VehicleBrand.find_or_create_by!(name: params.dig(:brand))

        brand.vehicle_models.create!(
          name: params.dig(:name)
        )

        head :created
      end
    end
  end
end
