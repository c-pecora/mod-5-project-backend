class NotificationsController < ApplicationController

	def create
		users = User.all.select { |user |user.conversation_ids.include?(params[:convo_id]) }
    	users.each do |user| 
    		if user.id != params[:user_id]
    		notification = Notification.new(content: "new notification in #{params[:content]}", user_id: user.id, read: false, timing: params[:timing])
		    if notification.save
			   	ActionCable.server.broadcast 'notifications_channel', {notification: NotificationSerializer.new(notification), sender_id: params[:user_id]}
			end
		end
	    end
	    render json: users
	end

	def update
		@notification = Notification.find(params[:id])
		@notification.update(read: true)
		render json: @notification
	end

end
