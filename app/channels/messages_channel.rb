class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messageschannel"
    # stream_from "pokertableupdate"
  end

  def receive(params)
    message = Message.create(user_id: params["message"]["user_id"], poker_table_id: params["message"]["poker_table_id"], content: params["message"]["content"])
    ActionCable.server.broadcast('messageschannel', MessageSerializer.new(message))
  end

  # private
  #
  # def message_params(params)
  #   params.require(:message).permit(:user_id, :poker_table_id, :content)
  # end

end
