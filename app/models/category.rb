class Category < ActiveRecord::Base
  has_many :skills, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
