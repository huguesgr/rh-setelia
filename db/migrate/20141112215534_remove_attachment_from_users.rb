class RemoveAttachmentFromUsers < ActiveRecord::Migration
  def change
    remove_attachment :users, :attachment
    change_table :attachments do |t|
      t.attachment :resume
    end
  end
end
