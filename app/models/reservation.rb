class Reservation < ApplicationRecord
  has_one :user, through: :account
  has_one :unit
end
