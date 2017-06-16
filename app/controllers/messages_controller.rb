class MessagesController < ApplicationController

  def index
    messages = Message.find_by("poker_table_id": params["pokertable_id"])
    render json: messages
  end

  def create
    message = Message.create(message_params)
    messages = Message.all
    render json: messages
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :poker_table_id, :content)
  end

end
