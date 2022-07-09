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
		@question = Admin::Question.find(params[:answer][:question_id].to_i)
		@answers = Admin::Answer.where(question_id: @question.id)
		@answers.each do |each_answer|
			if each_answer.is_correct==true
				@correct=each_answer
			end
		end
		if @answer.save
			if @answer.is_correct==true && @answer.present? #Make the old answer as false
				@correct.is_correct=false
				@correct.save
			end
			redirect_to admin_questions_path, alert: "Answer has been added."
		else
			redirect_to admin_questions_path, alert: :unprocessable_entity
		end
	end
	def edit
		@answer = Admin::Answer.find(params[:answer_id])
	end
	def update
		@each_answer = Admin::Answer.find(params[:id])
		@question = Admin::Question.find(@each_answer.question_id)
		@answers = Admin::Answer.where(question_id: @question.id)

		@answers.each do |each_ans| #Check if answer exists for the question
			if each_ans.is_correct==true
				@correct=each_ans #Save the option as answer
			end
		end

		# @each_answer.update(params[:answer_id],answer_params)
		if @each_answer.update(option_params)
			if @each_answer.is_correct==true && @correct.present?
				@correct.is_correct=false
				@correct.save
			end
			redirect_to admin_questions_path,  alert: "Answer has been updated."	
		end
	end
	def destroy
		@answer = Admin::Answer.find(params[:id])
		@question = Admin::Question.find(@answer.question_id)
		@answer.destroy
		redirect_to admin_questions_path, alert: "Answer has been deleted."
	end
	def answer_params
		params.require(:admin_answer).permit(:answer_text, :is_correct, :question_id)
	end 
end
