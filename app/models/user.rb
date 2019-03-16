class User < ApplicationRecord
  has_many :accounts
  has_many :bets
  has_many :games, through: :bets

  has_secure_password

  validates :email, uniqueness: true
end
