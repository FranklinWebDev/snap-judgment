class ApplicationController < ActionController::Base

	helper_method :current_user

	def current_user
		@current_user ||= Admin::User.find(session[:user_id]) if session[:user_id]
	end
	def require_user
		redirect_to login_path unless current_user
	end 
	def require_admin_user
		redirect_to login_path unless current_user && current_user.admin == true
	end 

end
