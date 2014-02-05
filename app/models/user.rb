class User < ActiveRecord::Base
	
	# ensure email uniqueness by downcasing the email attrib
	before_save { self.email = email.downcase }

	#         name is present         name is max 50 chars
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
					uniqueness: { case_sensitive: false }

end