class PokerTable < ApplicationRecord
  has_many :user_poker_tables
  has_many :users, through: :user_poker_tables
end
