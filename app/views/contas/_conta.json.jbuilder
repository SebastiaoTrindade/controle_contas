json.extract! conta, :id, :nome_empresa, :descricao, :valor, :data_vencimento, :status, :created_at, :updated_at
json.url conta_url(conta, format: :json)
