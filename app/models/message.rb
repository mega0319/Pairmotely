class Message < ApplicationRecord
  belongs_to :user
  belongs_to :poker_table
end
