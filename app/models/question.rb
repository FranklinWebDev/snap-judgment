class Question < ApplicationRecord
	require 'csv'
	def self.add_from_csv(params)
		CSV.foreach(params[:questionsCSV], headers: true) do |row|
			Question.create(row.to_h)
		end
	end
end
