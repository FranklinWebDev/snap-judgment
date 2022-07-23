class User < ApplicationRecord
		# Include default devise modules. Others available are:
		# :lockable, :timeoutable, :trackable and :omniauthable
		devise :database_authenticatable, :registerable,
					 :recoverable, :rememberable, :validatable, :confirmable

	# has_secure_password

	require 'csv'

	def self.add_from_csv(params)
		CSV.foreach(params[:usersCSV], headers: true) do |row|
			add_hash = row.to_h
			add_hash[:course_id] = params[:course_id]
			User.create(add_hash)
		end
	end

end
