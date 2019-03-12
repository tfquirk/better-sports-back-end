class Game < ApplicationRecord
  has_many :teams
  has_many :bets
  has_many :users, through: :bets
end
