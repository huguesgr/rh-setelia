class Profile < ActiveRecord::Base
  before_save { self.label = label.titleize }
  validates :label, presence: true
end
