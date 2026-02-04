class RenameEquipamentosNumSerie < ActiveRecord::Migration[7.2]
  def change
    rename_column :equipamentos, :num_serie, :numero_serie
  end
end
