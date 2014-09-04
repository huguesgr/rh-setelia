class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :user_id
      t.integer :skill_id

      t.timestamps
    end
    add_index :proficiencies, :user_id
    add_index :proficiencies, :skill_id
    add_index :proficiencies, [:user_id, :skill_id]
  end
end
