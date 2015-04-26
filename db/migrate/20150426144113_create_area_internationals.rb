class CreateAreaInternationals < ActiveRecord::Migration
  def change
    create_table :area_internationals do |t|
      t.string :label

      t.timestamps
    end
  end
end
