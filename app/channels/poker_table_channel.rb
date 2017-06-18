class PokerTableChannel < ApplicationCable::Channel
  def subscribed
    stream_from "pokertablechannel"
    # stream_from "pokertableupdate"
  end

  def receive(params)
    table = PokerTable.find(params["user_updates"]["id"])
    table.update(
    pot: params["poker_table"]["pot"], dealer_button_position: params["poker_table"]["dealer_button_position"], small_blind: params["poker_table"]["small_blind"], big_blind: params["poker_table"]["big_blind"], current_turn_position: params["poker_table"]["current_turn_position"], deck_id: params["poker_table"]["deck_id"], board: params["poker_table"]["board"], players: params["poker_table"]["players"], player_hand: params["poker_table"]["player_hand"], active_players: params["poker_table"]["active_players"], folded_players: params["poker_table"]["folded_players"], dealt: params["poker_table"]["dealt"], winner: params["poker_table"]["winner"], current_bet: params["poker_table"]["current_bet"], winning_hand: params["poker_table"]["winning_hand"], phase: params["poker_table"]["phase"],
    players_logged_in: params["poker_table"]["players_logged_in"]
    )
    # byebug
    table.save
    ActionCable.server.broadcast('pokertablechannel', table )
  end

end
