class AddEvenMoreColumnsToPokerTables < ActiveRecord::Migration[5.1]
  def change
    add_column :poker_tables, :deck_id, :integer
    add_column :poker_tables, :board, :jsonb
    add_column :poker_tables, :players, :jsonb
    add_column :poker_tables, :player_hand, :jsonb
    add_column :poker_tables, :active_players, :text, array:true, default: []
    add_column :poker_tables, :folded_players, :text, array:true, default: []
    add_column :poker_tables, :dealt, :boolean, default: false
    add_column :poker_tables, :winner, :string
    add_column :poker_tables, :current_bet, :integer
    add_column :poker_tables, :winning_hand, :jsonb
  end
end
