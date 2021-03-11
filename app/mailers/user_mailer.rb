class UserMailer < ApplicationMailer
  def forgot_password(user)
    @user = user
    mail subject: "Recuperar senha no Twister", to: @user.email
  end
end
