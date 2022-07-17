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
		@question = Admin::Question.new
		authorize @question
		4.times {@question.answers.build}
	end
	def create
		@question = Admin::Question.create(
			situation: params[:admin_question][:situation],
			description: params[:admin_question][:description],
			category: params[:admin_question][:category],
			quiz: Quiz.first
		)
		authorize @question
		if @question.save
			redirect_to admin_questions_path, alert: "Question has been added."
		else
			redirect_to admin_questions_path, alert: @question.errors
		end
	end
	def edit
		@question = Admin::Question.find(params[:id])
		authorize @question
		@answers = @question.answers
	end
	def update
		@question = Admin::Question.find(params[:id])
		# authorize @question
		@question.update!(question_params)
		redirect_to admin_questions_path,  alert: "Question has been updated."
	end
	def destroy
		@question = Admin::Question.find(params[:id])
		authorize @question
		@question.destroy
		redirect_to admin_questions_path, alert: "Question has been deleted."
	end
	def question_params
		params.require(:admin_question).permit!
	end
end
