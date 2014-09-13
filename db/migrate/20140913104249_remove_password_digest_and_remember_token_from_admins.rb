class RemovePasswordDigestAndRememberTokenFromAdmins < ActiveRecord::Migration
  def change
    remove_column :admins, :password_digest
    remove_column :admins, :remember_token
  end
end
