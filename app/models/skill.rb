class Skill < ActiveRecord::Base
  default_scope { order('keyword') } 

	has_many :users, through: :proficiencies
	has_many :proficiencies, dependent: :destroy
  belongs_to :category
  
  validates :keyword, presence: true
  validates_uniqueness_of :keyword, :scope => :category
  validates :category, presence: true
end
