class CreateUserPokerTable < ActiveRecord::Migration[5.1]
  def change
    create_table :user_poker_tables do |t|
      t.integer :user_id 
      t.integer :poker_table_id
    end
  end
end
