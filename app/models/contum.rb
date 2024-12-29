class Contum < ApplicationRecord
  validates :nome_empresa, :descricao, :valor, :data_vencimento, :status, presence: true
  validates :valor, numericality: { greater_than: 0 }
  validates :status, inclusion: { in: ['Pendente', 'Pago', 'Vencido'] }
end
