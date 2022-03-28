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
		if params[:questionsCSV]
			Question.add_from_csv(params)
			redirect_to questions_path
		else
			puts 'START ADD QUESTION'
			Question.create(situation: params[:situation], description: params[:description], hint: params[:hint], image_url: params[:image_url], option1: params[:option1], option2: params[:option2], option3: params[:option3], option4: params[:option4], answer: params[:answer])
			puts 'END ADD QUESTION'
			redirect_to questions_path
		end
	end
	def edit
		@question = Question.find(params[:id])
	end
	def update
		Question.update(params[:id], situation: params[:situation], description: params[:description], hint: params[:hint], image_url: params[:image_url], option1: params[:option1], option2: params[:option2], option3: params[:option3], option4: params[:option4], answer: params[:answer])
		redirect_to questions_path
	end
	def destroy
		Question.destroy(params[:id])
		redirect_to questions_path, alert: "question has been deleted."
	end
end
