class AddOneMoreColumnToPokerTables < ActiveRecord::Migration[5.1]
  def change
    add_column :poker_tables, :phase, :string
  end
end
