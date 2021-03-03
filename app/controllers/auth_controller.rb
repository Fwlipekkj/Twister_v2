class AuthController < ActionController::Base
  include AuthHelper
  layout 'authentication'

  def register
    @user = User.new
  end

  def post_register
    @user = User.new(register_params)

    if !@user.save
      return render :register
    end

    sign_in(@user)
    flash[:success] = "Conta criada!"
    redirect_to posts_path
  end

  def login
    @user = User.new
  end

  def post_login
    @user = User.find_by(email: login_params[:email])

    if !(@user && @user.authenticate(login_params[:password]))
      flash[:error] = "E-mail ou Senha inválida."
      return redirect_to user_login_path
    end

    sign_in(@user)
    redirect_to posts_path
  end

  def logout
    sign_out
    redirect_to user_login_path
  end


  private
  def register_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation)
  end

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
