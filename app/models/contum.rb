class Contum < ApplicationRecord
  validates :nome, :valor, :data_vencimento, :status, presence: true
  validates :status, inclusion: { in: %w[Pendente Pago] }  
  
end
