class Language < ActiveRecord::Base
  has_many :users, through: :speaks
  has_many :speaks, dependent: :destroy

  validates :name, presence: true
end