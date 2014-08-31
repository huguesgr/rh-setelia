class Admin < ActiveRecord::Base
  validates_presence_of :login
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create

  before_create :create_remember_token

  has_secure_password

  def Admin.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Admin.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = Admin.digest(Admin.new_remember_token)
    end
end
