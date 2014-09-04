class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_many :skills, through: :proficiencies
  has_many :proficiencies, dependent: :destroy

  has_many :languages, through: :speaks
  has_many :speaks, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  
end
