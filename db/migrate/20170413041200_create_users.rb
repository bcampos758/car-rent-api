class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :dob
      t.string :phone
      t.string :insurance
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :license
      t.boolean :isEmployee

      t.timestamps
    end
  end
end
