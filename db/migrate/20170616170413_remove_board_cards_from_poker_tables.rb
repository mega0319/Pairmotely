class RemoveBoardCardsFromPokerTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :poker_tables, :board_cards
  end
end
