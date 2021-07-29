class CreateVehicleModels < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicle_models do |t|
      t.string :name, null: false
      t.belongs_to :vehicle_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
