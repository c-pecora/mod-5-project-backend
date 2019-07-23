class MessageSerializer < ActiveModel::Serializer
	attributes :id, :text, :created_at, :user_id, :conversation_id, :user_name
	# belongs_to :user
	# belongs_to :conversation

	def user_name
		object.user.full_name 
	end
end
