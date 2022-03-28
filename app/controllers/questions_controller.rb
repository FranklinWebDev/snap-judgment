class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end
	def show
		@question = Question.find(params[:id])
	end
	def new
		@question = Question.new
	end
	def create
		Question.create(question_params)
		redirect_to questions_path
	end
	def edit
		@question = Question.find(params[:id])
	end
	def update
		Question.update(params[:id],question_params)
		redirect_to questions_path
	end
	def destroy
		Question.destroy(params[:id])
		redirect_to questions_path, alert: "question has been deleted."
	end
	def question_params
		params.require(:question).permit(:question_image, :situation, :description, :hint, :option1, :option2, :option3, :option4, :answer)
	end 
end
