class RemovePasswordFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :password
    remove_column :users, :password_digest
  end

  def down
    add_column :users, :password_digest, :string
    add_column :users, :password, :string
  end
end
