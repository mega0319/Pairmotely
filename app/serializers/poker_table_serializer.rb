class PokerTableSerializer < ActiveModel::Serializer
  attributes :id, :name, :creator_id, :turns, :pot, :dealer_button_position, :small_blind,
  :big_blind, :current_turn_position, :deck_id, :board, :players, :player_hand, :active_players, :folded_players, :dealt, :winner, :current_bet, :winning_hand, :phase

  has_many :users
end
