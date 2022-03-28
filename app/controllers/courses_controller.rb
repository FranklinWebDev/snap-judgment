class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end
	def show
		@course = Course.find(params[:id])
	end
	def new
		@course = Course.new
	end
	def create
		Course.create(course_params)
		redirect_to courses_path
	end
	def edit
		@course = Course.find(params[:id])
	end
	def update
		Course.update(params[:id], course_params)
		redirect_to courses_path
	end
	def destroy
		@course_users = User.where(course_id: params[:id])
		if @course_users.length > 0
			redirect_to courses_path, alert: "Course has users. Delete users first."
		else
			Course.destroy(params[:id])
			redirect_to courses_path, alert: "Course has been deleted."
		end
	end
	def course_params
		params.require(:course).permit(:name)
	end
end
