class Result < ApplicationRecord
    belongs_to :quiz
	belongs_to :user
	has_many :submissions, :dependent => :destroy
	accepts_nested_attributes_for :submissions, reject_if: proc { |att| att['answer'].blank? }
end
