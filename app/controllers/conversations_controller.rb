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

    def create_dm
    	conversation = Conversation.create(dm: params[:dm], title: params[:title])
    	if conversation.save
	    	params[:user_ids].each do |user_id| 
	    		user = User.find(user_id)
	    		user.conversations << conversation
	    		user.save
    		end
			ActionCable.server.broadcast 'conversations_channel', ConversationSerializer.new(conversation)
		    render json: conversation
		end
    end

	def show
		@conversation = Conversation.find(params[:id])
		render json: @conversation
	end	

	def join_conversation
		@conversation = Conversation.find(params[:conversation_id])
	    @user = User.find(params[:user_id])

	    user_convo_ids = @user.conversations.map do |convo|
	    	convo.id
	    end
	    if user_convo_ids.include?(@conversation.id)
	    	@convo = User.conversations.find(@conversation.id)
	    	@user.conversation.delete(@convo)
	    else 
	    	@user.conversations << @conversation
	    	@user.save
	    end
	    render json: @conversation
	end

private

  def conversation_params
    params.require(:conversation).permit(:title, :purpose, :creator, :dm)
  end

end
