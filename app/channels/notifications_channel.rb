class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    notification = Notification.find(params[:id])
    stream_for notification
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    raise "stop"
  end
end
