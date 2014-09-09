class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_save { self.first_name = first_name.titleize }
  before_save { self.last_name = last_name.upcase }
  
  default_scope { order('last_name') } 

  has_many :skills, through: :proficiencies
  has_many :proficiencies, dependent: :destroy

  has_many :languages, through: :speaks
  has_many :speaks, dependent: :destroy
  accepts_nested_attributes_for :speaks, :allow_destroy => true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true

  MOBILITY = ["Ile-de-France", "France"]
  EXPERIENCE = ["< 1 an", "1 à 3 ans", "3 à 5 ans", "5 à 8 ans", "> 8 ans"]
  SALARY = ["Moins de 30k", "30-35k", "35-40k", "40-45k", "45-50k", "50-55k", "55-60k", "60-65k", "65-70k", "Plus de 70k"]
  CONTRACT = ["CDD", "CDI", "Freelance", "Stage"]
end
