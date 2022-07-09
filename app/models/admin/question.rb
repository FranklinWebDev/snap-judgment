class Admin::Question < ApplicationRecord
	belongs_to :quiz
	has_one_attached :question_image
	has_many :answers, :dependent => :destroy
	accepts_nested_attributes_for :answers

end
