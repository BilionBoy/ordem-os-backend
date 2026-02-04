class UpdateClientes < ActiveRecord::Migration[7.2]
  def change
    add_column :clientes, :email, :string
    add_column :clientes, :data_registro, :datetime
  end
end
