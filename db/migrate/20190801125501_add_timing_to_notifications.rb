class AddTimingToNotifications < ActiveRecord::Migration[5.2]
  def change
  	add_column :notifications, :timing, :string
  end
end
