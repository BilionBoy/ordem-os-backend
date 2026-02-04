class AddAtendimentoTimestampsToOrdemServicos < ActiveRecord::Migration[7.2]
  def change
    add_column :ordem_servicos, :data_inicio_atendimento, :datetime
    add_column :ordem_servicos, :data_fim_atendimento, :datetime
  end
end
