class User < ApplicationRecord
has_many :user_poker_tables
has_many :poker_tables, through: :user_poker_tables

has_secure_password

end
