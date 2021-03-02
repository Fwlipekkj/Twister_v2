class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Usuário cadastrado com sucesso!"
      return redirect_to root_path
    end
    # flash[:error] = "Erro ao cadastrar o Usuário"
    render :new
  end

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation)
  end
end
