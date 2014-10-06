class AddDiplomaAndProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :diploma, :int
    add_column :users, :profile, :string
  end
end
