class ConversationsChannel < ApplicationCable::Channel

  def subscribed
    # conversation = Conversation.find_by(params[:id])
    stream_from "conversations_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    raise "stop"
  end

end
