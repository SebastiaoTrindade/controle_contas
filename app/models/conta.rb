class Conta < ApplicationRecord
  validates :nome_empresa, :descricao, :valor, :data_vencimento, :status, presence: true
  validates :valor, numericality: { greater_than_or_equal_to: 0 }
  validates :status, inclusion: { in: ['Pendente', 'Pago', 'Vencido'] }
end
