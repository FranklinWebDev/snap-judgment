class QuizController < ApplicationController
	layout "quiz"
	def index
		@question = Admin::Question.order(Arel.sql('RANDOM()')).first
	end
end
