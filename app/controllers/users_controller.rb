class UsersController < ApplicationController
  layout 'authentication'

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if !@user.save
      # flash[:error] = "Erro ao cadastrar o Usuário"
      return render :new
    end

    flash[:success] = "Usuário cadastrado com sucesso!"
    redirect_to posts_path
  end

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation)
  end
end
