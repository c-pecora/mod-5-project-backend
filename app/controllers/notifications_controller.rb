class NotificationsController < ApplicationController

	def create
		users = User.all.select { |user |user.conversation_ids.include?(params[:convo_id]) }
    	users.each do |user| 
    		notification = Notification.new(content: "new notification in #{params[:content]}", user_id: user.id)
		    if notification.save
			   	ActionCable.server.broadcast 'notifications_channel', NotificationSerializer.new(notification)
			    render json: notification
			end
	    end

	end

	def update
		@notification = Notification.find(params[:id])
		@notification.update(read: true)
		render json: @notification
	end

end
