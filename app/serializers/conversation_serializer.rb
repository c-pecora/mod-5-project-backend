class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :users, :purpose, :creator
  has_many :messages
end
