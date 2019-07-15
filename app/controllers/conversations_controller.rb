class ConversationsController < ApplicationController

	def index
		@conversations = Conversation.all
		render json: @conversations
	end

	def show
		@conversation = Conversation.find(params[:id])
		render json: @conversation
	end	

end
