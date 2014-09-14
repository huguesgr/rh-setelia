class Category < ActiveRecord::Base
  has_many :skills, dependent: :destroy
  before_save { self.name = name.titleize }
  validates :name, presence: true, uniqueness: true
end
