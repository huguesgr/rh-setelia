class AddUserIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :user_id, :int
  end
end
