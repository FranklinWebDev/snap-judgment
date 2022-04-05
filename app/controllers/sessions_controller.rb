class SessionsController < ApplicationController
	def new
	end
	def create
		@user = Admin::User.find_by(email: params[:email])
		@questions = Admin::Question.order("RANDOM()").limit(10).ids.to_a
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			session[:quiz_questions] = @questions
			session[:current_question] = 0
			redirect_to root_path
		else
			redirect_to login_path
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end