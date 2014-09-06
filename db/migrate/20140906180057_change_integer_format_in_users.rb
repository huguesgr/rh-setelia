class ChangeIntegerFormatInUsers < ActiveRecord::Migration
  def up
    change_column :speaks, :level, :integer  
  end

  def down
    change_column :speaks, :level, :integer  
  end
end
