class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :content, :timing, :read, :user_id
  belongs_to :user
end
