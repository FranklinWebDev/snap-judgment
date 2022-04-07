class QuizController < ApplicationController
	before_action :require_user
	def index
		if session[:current_question] <= 9
			@question = Admin::Question.find(session[:quiz_questions][session[:current_question]])
		else
			redirect_to root_path
		end
	end
	def create
		if session[:current_question] <= 9
			session[:current_question] += 1
			redirect_to quiz_index_path
		else
			redirect_to root_path
		end
	end
end
