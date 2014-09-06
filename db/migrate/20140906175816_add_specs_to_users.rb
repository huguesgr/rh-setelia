class AddSpecsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :mobility, :integer
    add_column :users, :international_mobility, :boolean
    add_column :users, :experience, :integer
    add_column :users, :salary, :integer
    add_column :users, :contract, :integer
    add_column :users, :availability, :boolean
  end
end
