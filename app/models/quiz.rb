class Quiz < ApplicationRecord
    has_many :questions, dependent: :delete_all
    has_many :submissions

    def next
		self.where("id > ?", id).limit(1).first
	end

end