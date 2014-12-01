class ChangeCommentFormatInUsers < ActiveRecord::Migration
  def change
    change_column :users, :comment, :text
  end
end
