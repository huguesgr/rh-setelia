class AddCategoryIdToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :category_id, :integer
  end
end
