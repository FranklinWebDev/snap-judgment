class ApplicationController < ActionController::Base
	require 'will_paginate/array'
	helper_method :current_user
	helper_method :is_admin_user

	def current_user
		@current_user ||= Admin::User.find(session[:user_id]) if session[:user_id]
	end
	def is_admin_user
		if current_user && current_user.is_admin == true
			@is_admin_user = true
		end
	end
	def require_user
		redirect_to login_path unless current_user
	end 
	def require_is_admin_user
		redirect_to login_path unless is_admin_user
	end 

end
