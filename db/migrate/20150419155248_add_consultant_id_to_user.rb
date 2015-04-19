class AddConsultantIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :consultant_id, :integer
  end
end
