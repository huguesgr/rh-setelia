class ChangeAvailabilityFormatInUser < ActiveRecord::Migration
  def up
   change_column :users, :availability, :string
  end

  def down
   change_column :users, :availability, :boolean
  end
end
