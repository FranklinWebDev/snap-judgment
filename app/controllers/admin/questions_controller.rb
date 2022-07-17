class Admin::QuestionsController < ApplicationController
	before_action :require_is_admin_user
	def index
		@questions = Admin::Question.all.order('created_at asc')
	end
	def show
		@question = Admin::Question.find(params[:id])
		@answers = @question.answers
	end
	def new
		@quiz = Quiz.first
		@question = Admin::Question.new
		4.times {@question.answers.build}
	end
	def create
		@question = Admin::Question.new(question_params)
		if @question.save
			redirect_to admin_questions_path, alert: "Question has been added."
		else
			# @question.errors.full_messages
			redirect_to admin_questions_path, alert: :unprocessable_entity
			# , alert: @question.errors.full_messages
		end
	end
	def edit
		@question = Admin::Question.find(params[:id])
		@answers = @question.answers
	end
	def update
		@question = Admin::Question.find(params[:id])
		if @question.update(question_params)
			redirect_to admin_questions_path,  alert: "Question has been updated."
		else
			redirect_to admin_questions_path,  alert: @question.errors.full_messages
		end
	end
	def destroy
		Admin::Question.destroy(params[:id])
		redirect_to admin_questions_path, alert: "Question has been deleted."
	end
	def question_params
		params.require(:admin_question).permit(:question_image, :situation, :description, :category, :quiz_id, answers_attributes: [:id, :answer_text, :is_correct])
	end 
end
