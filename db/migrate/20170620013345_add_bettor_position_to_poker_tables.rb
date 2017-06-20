class AddBettorPositionToPokerTables < ActiveRecord::Migration[5.1]
  def change
    add_column :poker_tables, :bettor_position, :integer
  end
end
