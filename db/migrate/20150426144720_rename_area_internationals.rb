class RenameAreaInternationals < ActiveRecord::Migration
  def change
    rename_table :area_internationals, :international_areas
  end
end
