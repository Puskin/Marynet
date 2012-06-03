class User < ActiveRecord::Base

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }
	validates :email,	presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }

	before_save :create_remember_token


	private

		def create_remember_token
			self.remember_token = SecureRandom.urlsafe_base64
		end	

end
