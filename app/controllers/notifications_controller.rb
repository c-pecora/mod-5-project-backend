class NotificationsController < ApplicationController

	def create
		byebug
	end

	def update
		@notification = Notification.find(params[:id])
		@notification.update(read: true)
		render json: @notification
	end

end
