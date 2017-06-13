class CreatePokerTables < ActiveRecord::Migration[5.1]
  def change
    create_table :poker_tables do |t|
      t.string :name
      t.integer :creator_id
      t.string :board_cards
      t.integer :turns
      t.integer :pot
      t.integer :dealer_button_position
      t.integer :small_blind
      t.integer :big_blind
      t.integer :current_turn_position
      t.integer :user_poker_table_id
    end
  end
end
