class AddIndexToUser < ActiveRecord::Migration[5.2]
  disable_ddl_transaction! #desabilitar trabsaccion no se pegue
  def change
  	enable_extension 'btree_gin'
  	add_index :users,[:first_name, :last_name, :email], using: :gin, algorithm: :concurrently
  end
end
