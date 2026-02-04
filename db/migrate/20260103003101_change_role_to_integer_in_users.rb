class ChangeRoleToIntegerInUsers < ActiveRecord::Migration[7.2]
  def change
      remove_column :users, :role
      add_column :users, :role, :integer, null: false, default: 0
  end
end
