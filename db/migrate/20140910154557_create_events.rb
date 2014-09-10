class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
