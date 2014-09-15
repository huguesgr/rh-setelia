class AddColumnChangeStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :change_status, :boolean
  end
end
