class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_many :skills, through: :proficiencies
  has_many :proficiencies, dependent: :destroy

  has_many :languages, through: :speaks
  has_many :speaks, dependent: :destroy
  accepts_nested_attributes_for :speaks, :allow_destroy => true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true

  MOBILITY = ["Ile-de-France"]
  EXPERIENCE = ["0-1 an"]
  SALARY = ["30-32k"]
  CONTRACT = ["CDI", "CDD", "Freelance"]
end
