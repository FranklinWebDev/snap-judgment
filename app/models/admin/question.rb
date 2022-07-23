class Admin::Question < ApplicationRecord
	belongs_to :quiz #Quiz FK in Questions table
	has_one_attached :question_image
	has_many :answers, :dependent => :destroy
	accepts_nested_attributes_for :answers
end
