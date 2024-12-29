class ContasController < ApplicationController
  before_action :logged_in_user
  layout false

  def new
    @conta = Contum.new
  end

  def create
    @conta = Contum.new(conta_params)
    if @conta.save
      flash[:success] = "Conta cadastrada com sucesso!"
      redirect_to contas_path
    else
      flash[:error] = "Erro ao salvar a conta"
      render 'new'
    end
  end

  def index
    @contas = Contum.all
  end

  def edit
    @conta = Contum.find(params[:id])
  end

  def update
    @conta = Contum.find(params[:id])
      if @conta.update(conta_params)
        flash[:success] = "Conta atualizada com sucesso"
        redirect_to contas_path
      else
        flash[:error] = "Erro ao atualizar a conta"
        render 'edit'
      end
  end
  
  private

  def conta_params
    params.require(:conta).permit(:nome_empresa, :descricao, :valor, :data_vencimento, :status)
  end
  
end
