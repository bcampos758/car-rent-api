class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :pickUp
      t.string :dropOff
      t.string :location
      t.string :isOpen
      t.string :confirmation

      t.timestamps
    end
  end
end
