class PasswordController < ActionController::Base
  include SessionHelper
  layout "session"


  def forgot
  end

  def recovery
    @user = User.find_by(email: recovery_params[:email])

    if !@user.present?
      flash[:error] = "O E-mail não é válido"
      return redirect_to forgot_password_path
    end

    @user.generate_password_token!
    UserMailer.forgot_password(@user).deliver_now
    render :recovery_sent
  end

  def recovery_params
    params.require(:user).permit(:email)
  end

end
