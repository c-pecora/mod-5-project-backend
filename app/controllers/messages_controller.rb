class MessagesController < ApplicationController

	def index
		@messages = Message.all
		render json: @messages
	end

	def show
		@message = Message.find(params[:id])
		render json: @message
	end

	def create
	  message = Message.new(message_params)
	  conversation = Conversation.find(message_params[:conversation_id])
	  if message.save
	      MessagesChannel.broadcast_to conversation, MessageSerializer.new(message)
	      render json: message
      end
     # render json: message
  end
  
  private
  
  def message_params
    params.require(:message).permit(:text, :conversation_id, :user_id)
  end

end
