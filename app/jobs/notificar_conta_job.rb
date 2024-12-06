class NotificarContaJob < ApplicationJob
  queue_as :default

  def perform()
    contas = Conta.where(status: 'Pendente').where('data_vencimento <= ?', Date.today + 3.days)
    contas.each do |conta|
      UsuarioMailer.alerta_vencimento(conta).deliver_now
    end    
  end
end
