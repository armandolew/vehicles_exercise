class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.belongs_to :vehicle_model, null: false, foreign_key: true
      t.integer :year, null: false
      t.integer :mileage, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
