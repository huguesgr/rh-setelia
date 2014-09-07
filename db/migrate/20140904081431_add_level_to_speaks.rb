class AddLevelToSpeaks < ActiveRecord::Migration
  def change
    add_column :speaks, :level, :integer
  end
end
