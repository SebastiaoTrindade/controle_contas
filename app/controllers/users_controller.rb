class UsersController < ApplicationController
  skip_before_action :logged_in_user, only: [:new, :create]  
  layout 'signup'
    
  def new
    @user = User.new      
  end

  def create
    @user = User.new(user_params)
    
    if User.exists?(email: @user.email) || User.exists?(name: @user.name)
      render json: { status: 'error', message: 'Nome ou email já cadastrados. Tente novamente com outro.' }
    else
      if @user.save
        render json: { status: 'success', message: 'Usuário cadastrado com sucesso!' }
      else
        render json: { status: 'error', message: 'Erro ao cadastrar o usuário. Verifique os dados e tente novamente.' }
      end
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
