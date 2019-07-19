class ConversationsChannel < ApplicationCable::Channel

  def subscribed
  	byebug
    conversation = Conversation.find_by(params[:id])
    stream_from conversation
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    raise "stop"
  end

end
