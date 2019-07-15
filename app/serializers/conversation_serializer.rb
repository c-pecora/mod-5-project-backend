class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :users
  has_many :messages
end
