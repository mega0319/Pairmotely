class ChangeColumnNameInPokerTables < ActiveRecord::Migration[5.1]
  def change
    change_column :poker_tables, :deck_id, :string
  end
end
