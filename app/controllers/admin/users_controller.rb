class Admin::UsersController < ApplicationController
	before_action :require_is_admin_user
	def index
		if params[:course_id]
			@users = Admin::User.where(course_id: params[:course_id]).order('created_at asc')
		else
			@users = Admin::User.where(course_id: Admin::Course.first.id).order('created_at asc')
		end
		@courses = Admin::Course.all
	end
	def show
		@user = Admin::User.find(params[:id])
	end
	def new
		@user = Admin::User.new
		@courses = Admin::Course.all
	end
	def create
		if params[:admin_user][:hasCSV] == 'true'
			Admin::User.add_from_csv(params[:admin_user])
			redirect_to admin_users_path(course_id: params[:admin_user][:course_id])
		else
			@user = Admin::User.new(user_params)
			if @user.save
				redirect_to admin_users_path(course_id: params[:admin_user][:course_id]), alert: "New user added."
			else
				redirect_to admin_users_path(course_id: params[:admin_user][:course_id]), alert: :unprocessable_entity
			end
		end
	end
	def edit
		@user = Admin::User.find(params[:id])
		@courses = Admin::Course.all
	end
	def update
		Admin::User.update(params[:id], user_params)
		redirect_to admin_users_path(course_id: params[:course_id])
	end
	def destroy
		this_user = Admin::User.find(params[:id])
		Admin::User.destroy(params[:id])
		redirect_to admin_users_path(course_id: this_user[:course_id])
	end
	def user_params
		params.require(:admin_user).permit(:first_name, :last_name, :email, :password, :course_id, :is_admin)
	end 
end
