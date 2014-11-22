class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :label

      t.timestamps
    end
  end
end
