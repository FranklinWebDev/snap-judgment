class Admin::Question < ApplicationRecord
	has_one_attached :question_image
	has_many :answers, :dependent => :destroy
end
