class Admin < ActiveRecord::Base  
  attr_accessible :login, :password, :password_digest

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate(login, submitted_password)
	<%-# To be checked -%>
    admin = find_by_login(login)
    return nil  if admin.nil?
    return admin if admin.has_password?(submitted_password)
  end
  
  validates :login, presence: true
end
