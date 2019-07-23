class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :users, :purpose
  has_many :messages
end
