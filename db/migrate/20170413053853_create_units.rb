class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :mileage
      t.boolean :isAvailable
      t.string :vin
      t.string :license
      t.references :vehicle, foreign_key: true
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
