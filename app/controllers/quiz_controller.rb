class QuizController < ApplicationController
	before_action :require_user
	def index
		@questions = Admin::Question.all
		redirect_to action: "show", id: Admin::Question.first.id
	end

	def show
		@questions = Admin::Question.all
		# @questions = Admin::Question.order("RANDOM()").ids.to_a
		@question = Admin::Question.find(params[:id])
		@question_last = Admin::Question.last
		@question_all = @questions.paginate(page: params[:page], per_page: 1) #questions paginated
		@total_score = 100
		# @answer = Admin::Answer.new
		@answers = Admin::Answer.where(question_id: @questions).shuffle
		question_count = 0

		@questions.each do |each_question|
		 	selection = false
	     	@answers.each do |each_answer|
				if each_answer.is_correct == true
					selection = true
				end
			end
			if selection == true
				question_count+=1
			end
		end
	end
	# def index
		# if session[:current_question] <= 9
		# 	@question = Admin::Question.find(session[:quiz_questions][session[:current_question]])
		# 	@answers = Admin::Answer.where(question_id: @question).shuffle
		# else
		# 	redirect_to root_path
		# end
	# end
	# def create
	# 	if session[:current_question] <= 9
	# 		session[:current_question] += 1
	# 		redirect_to quiz_index_path
	# 	else
	# 		redirect_to root_path
	# 	end
	# end
	def create
	end
	def edit
	end
	def update
	end

end
