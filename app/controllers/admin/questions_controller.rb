class Admin::QuestionsController < ApplicationController
	before_action :require_is_admin_user
	def index
		@questions = Admin::Question.all.order('created_at asc')
	end
	def show
		@question = Admin::Question.find(params[:id])
	end
	def new
		@question = Admin::Question.new
	end
	def create
		@question = Admin::Question.create(question_params)
		if @question.save
			redirect_to admin_questions_path, alert: "Question has been added."
		else
			redirect_to admin_questions_path, alert: :unprocessable_entity
		end
	end
	def edit
		@question = Admin::Question.find(params[:id])
	end
	def update
		Admin::Question.update(params[:id],question_params)
		redirect_to admin_questions_path,  alert: "Question has been updated."
	end
	def destroy
		Admin::Question.destroy(params[:id])
		redirect_to admin_questions_path, alert: "Question has been deleted."
	end
	def question_params
		params.require(:admin_question).permit(:question_image, :situation, :description, :hint, :option1, :option2, :option3, :option4, :answer,:category)
	end 
end

