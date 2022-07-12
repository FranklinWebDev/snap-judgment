class Quiz < ApplicationRecord
    has_many :questions, class_name: 'Admin::Question', :dependent => :destroy
    validates :description, presence: true

    def next
		  self.where("id > ?", id).limit(1).first
	  end

end