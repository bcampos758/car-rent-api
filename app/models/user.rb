class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_one :account, dependent: :destroy
  has_many :reservations, through: :account
  has_secure_password
end
