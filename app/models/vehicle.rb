class Vehicle < ApplicationRecord
  has_many :units, dependent: :destroy
end
