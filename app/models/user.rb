class User < ApplicationRecord
has_many :user_poker_tables
has_many :poker_tables, through: :user_poker_tables
default_scope { order(created_at: :desc) }
has_secure_password

end
