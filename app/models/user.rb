class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_many :skills, through: :proficiencies
  has_many :proficiencies, dependent: :destroy

  has_many :languages, through: :speaks
  has_many :speaks, dependent: :destroy
  accepts_nested_attributes_for :speaks

  validates :first_name, presence: true
  validates :last_name, presence: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  
  def language_level(language)
    user_language = self.speaks.find_by_language_id(language.id)
    language_level = user_language.level unless user_language.nil?
  end
end
