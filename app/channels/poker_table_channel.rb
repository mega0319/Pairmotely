class PokerTableChannel < ApplicationCable::Channel
  def subscribed
    stream_from "pokertablechannel"
  end

  def receive(params)
    table = PokerTable.new(poker_table_params)
    # byebug
    params[:user_updates][:user_id].each do |user_id|
      user = User.find(user_id)
      table.users << user
      user.current_table = table.id
      user.save
    end

    table.save
    ActionCable.server.broadcast('pokertablechannel', table)
  end

end
