class CreateMobilities < ActiveRecord::Migration
  def change
    create_table :mobilities do |t|
      t.integer :user_id
      t.integer :area_id

      t.timestamps
    end
  end
end
