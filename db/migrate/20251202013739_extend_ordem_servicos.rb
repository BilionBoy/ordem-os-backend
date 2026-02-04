class ExtendOrdemServicos < ActiveRecord::Migration[7.2]
  def change
    add_column :ordem_servicos, :numero_ordem, :string
    add_column :ordem_servicos, :descricao, :string
    add_column :ordem_servicos, :tipo_servico, :string
    add_column :ordem_servicos, :data_vencimento, :date
    add_column :ordem_servicos, :custo_estimado, :decimal, precision: 10, scale: 2
    # se quiser vínculo direto com cliente
    add_reference :ordem_servicos, :cliente, foreign_key: true
  end
end
