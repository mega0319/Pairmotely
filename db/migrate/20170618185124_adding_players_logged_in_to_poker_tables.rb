class AddingPlayersLoggedInToPokerTables < ActiveRecord::Migration[5.1]
  def change
    add_column :poker_tables, :players_logged_in, :integer, array:true, default: []
  end
end
