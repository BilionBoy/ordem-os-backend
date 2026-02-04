# frozen_string_literal: true

class CreateOsTecnicos < ActiveRecord::Migration[7.2]
  def change
    create_table :os_tecnicos do |t|
      
        t.references :ordem_servico
      
        t.references :tecnico
      

      t.timestamps
    end
  end
end
