class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  
  attr_accessible :first_name, :last_name, :email
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  
end
