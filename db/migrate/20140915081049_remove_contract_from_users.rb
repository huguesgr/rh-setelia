class RemoveContractFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :contract, :integer
  end
end
