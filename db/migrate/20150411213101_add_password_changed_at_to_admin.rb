class AddPasswordChangedAtToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :password_changed_at, :datetime
    add_index :admins, :password_changed_at
  end
end
