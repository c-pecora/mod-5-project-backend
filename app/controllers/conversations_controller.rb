class ConversationsController < ApplicationController

	def index
		@conversations = Conversation.all
		render json: @conversations
	end

	def create
	
    conversation = Conversation.create(conversation_params)

	    if conversation.save
		    # serialized_data = ActiveModelSerializers::Adapter::Json.new(ConversationSerializer.new(conversation)).serializable_hash
		   	ActionCable.server.broadcast 'conversations_channel', ConversationSerializer.new(conversation)
		    render json: conversation
	    end
    end


	def show
		@conversation = Conversation.find(params[:id])
		render json: @conversation
	end	

	def join_conversation
		byebug
	end

private

  def conversation_params
    params.require(:conversation).permit(:title, :purpose, :creator)
  end

end
