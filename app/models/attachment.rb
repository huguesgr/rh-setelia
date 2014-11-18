class Attachment < ActiveRecord::Base
  belongs_to :user
  has_attached_file :resume

  validates :resume, presence: true
  validates_attachment_file_name :resume, :matches => [/pdf\Z/, /docx?\Z/, /odt\Z/, /rtf\Z/, /txt\Z/]
end
