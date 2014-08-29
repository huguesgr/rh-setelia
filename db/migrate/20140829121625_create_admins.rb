class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :login
      t.string :password
      t.string :password_digest

      t.timestamps
    end
  end
end
