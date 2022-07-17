class Quiz < ApplicationRecord
    has_many :questions, class_name: 'Admin::Question', :dependent => :destroy
    has_many :answers, class_name: 'Admin::Answer', through: :questions
    validates :description, presence: true

    def next
		  self.where("id > ?", id).limit(1).first
	  end

end