class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :label

      t.timestamps
    end
  end
end
