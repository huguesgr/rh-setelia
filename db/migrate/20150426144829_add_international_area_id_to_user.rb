class AddInternationalAreaIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :international_area_id, :integer
  end
end
