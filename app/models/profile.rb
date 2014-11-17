class Profile < ActiveRecord::Base
  default_scope { order('label ASC') }

  has_many :users

  before_save { self.label = label.titleize }
  validates :label, presence: true
end
