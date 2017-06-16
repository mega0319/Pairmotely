class PokerTableChannel < ApplicationCable::Channel
  def subscribed
    stream_from "pokertablechannel"
    # stream_from "pokertableupdate"
  end

  def receive(params)
    byebug
    table = PokerTable.find(params[:id])
    table.update(poker_table_params)
    table.save
    ActionCable.server.broadcast('pokertablechannel', table)
  end

end
