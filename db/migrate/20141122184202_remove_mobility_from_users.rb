class RemoveMobilityFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :mobility, :integer
  end
end
