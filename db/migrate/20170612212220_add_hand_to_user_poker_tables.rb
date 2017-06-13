class AddHandToUserPokerTables < ActiveRecord::Migration[5.1]
  def change
    add_column :user_poker_tables, :hand, :string
  end
end
