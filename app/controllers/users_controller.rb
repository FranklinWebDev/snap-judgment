class UsersController < ApplicationController
	def index
		if params[:course_id]
			@users = User.where(course_id: params[:course_id])
		else
			@users = User.where(course_id: Course.first.id)
		end
		@courses = Course.all
	end
	def show
		@user = User.find(params[:id])
	end
	def new
		@users = User.new
		@courses = Course.all
	end
	def create
		if params[:user][:hasCSV] == 'true'
			User.add_from_csv(params[:user])
			redirect_to users_path(course_id: params[:user][:course_id])
		else
			User.create(user_params)
			redirect_to users_path(course_id: params[:user][:course_id])
		end
	end
	def edit
		@user = User.find(params[:id])
		@courses = Course.all
	end
	def update
		User.update(params[:id], user_params)
		redirect_to users_path(course_id: params[:course_id])
	end
	def destroy
		this_user = User.find(params[:id])
		User.destroy(params[:id])
		redirect_to users_path(course_id: this_user[:course_id])
	end
	def user_params
		params.require(:user).permit(:email, :password, :course_id, :admin)
	end 
end
