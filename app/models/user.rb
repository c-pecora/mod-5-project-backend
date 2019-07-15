class User < ApplicationRecord
	has_secure_password
	has_and_belongs_to_many :conversations
	has_many :messages
	validates :email, uniqueness: true

	def full_name
		`#{self.first_name} #{self.last_name}`
	end


end
