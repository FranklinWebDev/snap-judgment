class ForgotPasswordController < ApplicationController
  def forgot_password
    ForgotPasswordMailer.on_create_notify(params[:email])
  end

  def edit_password
  end

  def update_password
    @user = Admin::User.find_by(email: params[:email])
    @user.update(password: params[:password], confirmed_at: Time.now)

    if @user.save
    redirect_to new_user_session_path, alert: 'Your password has been changed successfully.'
    else
    redirect_to root_path
    end
  end
end
