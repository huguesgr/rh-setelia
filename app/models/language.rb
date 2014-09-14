class Language < ActiveRecord::Base
  default_scope { order('name') } 

  has_many :users, through: :speaks
  has_many :speaks, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end