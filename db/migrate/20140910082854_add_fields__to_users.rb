class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interview_result, :integer
    add_column :users, :interview_state, :integer
    add_column :users, :comment, :string
  end
end
