class User < ApplicationRecord
  has_one :account, dependent: :destroy
  has_many :reservations, through: :account
  has_secure_password
end
