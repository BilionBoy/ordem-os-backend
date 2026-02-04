# frozen_string_literal: true

class CreatePrioridades < ActiveRecord::Migration[7.2]
  def change
    create_table :prioridades do |t|
      
        t.string :descricao
      

      t.timestamps
    end
  end
end
