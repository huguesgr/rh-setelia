class AddProfileIdToUsersAndRemoveProfileFromUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_id, :integer
    remove_column :users, :profile
  end
end
