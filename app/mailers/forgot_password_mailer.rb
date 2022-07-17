class ForgotPasswordMailer < ApplicationMailer

  def on_create_notify(address)
    @link = "#{root_url}/forgot_password?email=#{address}"

    mail to: addresse, subject: subject
  end

end