class UsersController < ApplicationController
  skip_before_action :logged_in_user, only: [:new, :create]  
  layout 'signup'
    
  def new
    @user = User.new      
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Usuário cadastrado com sucesso!"
      redirect_to login_path
    else
      flash.now[:danger] = "Erro ao cadastrar o usuário. Verifique os dados e tente novamente."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
