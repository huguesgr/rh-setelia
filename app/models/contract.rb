class Contract < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :user

  validates :type, presence: true

  TYPE = ["CDD", "CDI", "Freelance", "Stage", "Alternance"]
end
