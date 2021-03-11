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
    redirect_to recovery_sent_path
  end

  def recovery_sent
  end

  def reset
    @user = User.find_by(reset_password_token: params[:token])

    if !@user.present? || !@user.password_token_valid?
      flash[:error] = "Token inválido"
    end
  end

  def make_reset
    @user = User.find_by(email: reset_params[:email])

    @user.reset_password!(reset_params[:password])
    flash[:success] = "Senha resetada"
    redirect_to user_login_path
  rescue => exception
    flash[:error] = exception.message
    render :reset
  end

  private
  def recovery_params
    params.require(:user).permit(:email)
  end

  def reset_params
    params.require(:user).permit(:email, :password, :password_confirm)
  end

end
