class RemoveLoginFromAdmins < ActiveRecord::Migration
  def change
    remove_column :admins, :login, :string
  end
end
