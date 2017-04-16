class AddLocationToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :location, :string
  end
end
