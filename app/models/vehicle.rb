class Vehicle < ApplicationRecord
  has_many :units, dependent: :destroy
  validates :manufacturer, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :img, presence: true
  validates :vehicleType, presence: true
  validates :capacity, presence: true
  validates :quantity, presence: true
  validates :transmission, presence: true
  validates :rate, presence: true
end
