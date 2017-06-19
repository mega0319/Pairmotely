class AddMessageColumnToPokerTables < ActiveRecord::Migration[5.1]
  def change
    add_column :poker_tables, :message, :string
  end
end
