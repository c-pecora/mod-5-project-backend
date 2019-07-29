class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :photo_url, :bio, :conversations
  has_many :messages
  has_many :notifications

  # def conversations
  # 	self.conversations
  # end
end
