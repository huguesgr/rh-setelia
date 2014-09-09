class Skill < ActiveRecord::Base
  default_scope { order('keyword') } 

	has_many :users, through: :proficiencies
	has_many :proficiencies, dependent: :destroy

  validates :keyword, presence: true, uniqueness: true
end
