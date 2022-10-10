class ApplicationController < ActionController::Base
  require 'will_paginate/array'
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # protect_from_forgery with: :null_session, if: ->(controller) { controller.request.format == "application/json" }
  # before_action :configure_permitted_parameters, if: :devise_controller?


  helper_method :current_user
  helper_method :is_admin_user

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_admin_user
    if current_user && current_user.is_admin == true
      @is_admin_user = true
    end
  end
  def require_user
    redirect_to new_user_session_path unless current_user
  end
  def require_is_admin_user
    redirect_to new_user_session_path unless is_admin_user
  end

  private

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:user, keys: [
  # 		:hasCSV,
  # 		:course_id,
  # 		:first_name,
  # 		:last_name,
  # 		:email,
  # 		:password,
  # 		:is_admin
  # 		])
  # end

  def user_not_authorized(exception)
    flash[:error] = 'You are not authorized to perform this task now. Please contact support.'
    redirect_back fallback_location: root_path
  end
end
