class ContasController < ApplicationController
  before_action :logged_in_user
 
  def new
    @conta = Conta.new
  end

  def create
    @conta = Conta.new(conta_params)
    if @conta.save
      redirect_to contas_path, notice: "Conta cadastrada com sucesso!"
    else
      render :new
    end
  end
  
  def index
    @contas = Conta.all
    @contas = Conta.page(params[:page]).per(3)
  end

  def edit
    @conta = Conta.find(params[:id])
  end

  def update
    @conta = Conta.find(params[:id])
    if @conta.update(conta_params)
      redirect_to contas_path, notice: "Conta atualizada com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    @conta = Conta.find(params[:id])
    @conta.destroy
    redirect_to contas_path, notice: "Conta excluída com sucesso!"
  end
  

  private

  def conta_params
    params.require(:conta).permit(:nome_empresa, :descricao, :valor, :data_vencimento, :status)
  end
end

