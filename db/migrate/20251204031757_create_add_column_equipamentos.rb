# frozen_string_literal: true

class CreateAddColumnEquipamentos < ActiveRecord::Migration[7.2]
  def change
    add_column :equipamentos, :local_instalacao, :string
    remove_column :equipamentos, :numero_serie, :string
    end
  end