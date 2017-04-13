class Unit < ApplicationRecord
  belongs_to :vehicle
  belongs_to :reservation
end
