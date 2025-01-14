class CreateConta < ActiveRecord::Migration[7.0]
  def change
    create_table :conta do |t|
      t.string :nome_empresa
      t.text :descricao
      t.decimal :valor
      t.date :data_vencimento
      t.string :status

      t.timestamps
    end
  end
end
