class ContasController < ApplicationController
  before_action :set_conta, only: %i[ show edit update destroy ]
  layout false

  # GET /contas or /contas.json
  def index
    @contas = Contas.all
  end

  # GET /contas/1 or /contas/1.json
  def show
  end

  # GET /contas/new
  def new
    @conta = Contas.new
  end

  # GET /contas/1/edit
  def edit
  end

  # POST /contas or /contas.json
  def create
    @conta = Contas.new(conta_params)

    respond_to do |format|
      if @conta.save
        format.html { redirect_to @conta, notice: "Contas was successfully created." }
        format.json { render :show, status: :created, location: @conta }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas/1 or /contas/1.json
  def update
    respond_to do |format|
      if @conta.update(conta_params)
        format.html { redirect_to @conta, notice: "Contas was successfully updated." }
        format.json { render :show, status: :ok, location: @conta }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas/1 or /contas/1.json
  def destroy
    @conta.destroy

    respond_to do |format|
      format.html { redirect_to contas_index_path, status: :see_other, notice: "Contas was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta
      @conta = Contas.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conta_params
      params.require(:conta).permit(:nome_empresa, :descricao, :valor, :data_vencimento, :status)
    end
end
