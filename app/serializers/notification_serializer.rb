class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :read
  belongs_to :user
end
