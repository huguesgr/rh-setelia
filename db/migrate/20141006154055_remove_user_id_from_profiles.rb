class RemoveUserIdFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :user_id, :id
  end
end
