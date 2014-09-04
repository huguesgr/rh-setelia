class AddLevelToSpeaks < ActiveRecord::Migration
  def change
    add_column :speaks, :level, :string
  end
end
