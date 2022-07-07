class Admin::AnswersController < ApplicationController
	before_action :require_is_admin_user
	def index
		@answers = Admin::Answer.all.order('created_at asc')
	end
	def show
		@answer = Admin::Answer.find(params[:answer_id])
	end
	def new
		@answer = Admin::Answer.new
	end
	def create
		@answer = Admin::Answer.create(answer_params)
		if @answer.save
			redirect_to admin_questions_path, alert: "Answer has been added."
		else
			redirect_to admin_questions_path, alert: :unprocessable_entity
		end
	end
	def edit
		@answer = Admin::Answer.find(params[:answer_id])
	end
	def update
		Admin::Answer.update(params[:answer_id],answer_params)
		redirect_to admin_questions_path,  alert: "Answer has been updated."
	end
	def destroy
		Admin::Answer.destroy(params[:answer_id])
		redirect_to admin_questions_path, alert: "Answer has been deleted."
	end
	def answer_params
		params.require(:admin_answer).permit(:answer_text, :is_answer, :question_id)
	end 
end
