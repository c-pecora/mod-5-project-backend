class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :read, :user_id
  belongs_to :user
end
