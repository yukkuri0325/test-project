class User < ActiveRecord::Base
  before_save { email.downcase! }
  
  enum sex: { man: "1", woman: "2" }

  has_secure_password
  mount_uploader :image, ImageUploader

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
end
