class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.belongs_to :user
      t.string :content

      t.timestamps
    end
  end
end
