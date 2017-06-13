class RemoveColumnFromPokerTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :poker_tables, :user_poker_table_id
  end
end
