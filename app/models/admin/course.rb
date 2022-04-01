class Admin::Course < ApplicationRecord
	has_many :users
end
