class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.string :model
      t.string :img
      t.string :year
      t.string :vehicleType
      t.integer :capacity
      t.integer :quantity
      t.decimal :rate
      t.string :transmission

      t.timestamps
    end
  end
end
