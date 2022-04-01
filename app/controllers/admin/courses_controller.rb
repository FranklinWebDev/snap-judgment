class Admin::CoursesController < ApplicationController
	def index
		@courses = Admin::Course.all
	end
	def show
		@course = Admin::Course.find(params[:id])
	end
	def new
		@course = Admin::Course.new
	end
	def create
		Admin::Course.create(course_params)
		redirect_to admin_courses_path
	end
	def edit
		@course = Admin::Course.find(params[:id])
	end
	def update
		Admin::Course.update(params[:id], course_params)
		redirect_to admin_courses_path
	end
	def destroy
		@course_users = Admin::User.where(course_id: params[:id])
		if @course_users.length > 0
			redirect_to admin_courses_path, alert: "Course has users. Delete users first."
		else
			Admin::Course.destroy(params[:id])
			redirect_to admin_courses_path, alert: "Course has been deleted."
		end
	end
	def course_params
		params.require(:admin_course).permit(:name)
	end
end
