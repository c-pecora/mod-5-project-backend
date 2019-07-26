class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :users, :purpose, :creator, :dm
  has_many :messages
end
