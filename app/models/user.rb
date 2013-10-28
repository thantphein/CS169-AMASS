class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :username, :name, :usertype
  has_secure_password

#  before_create { generate_token(:auth_token) }
  before_save { |user| user.email.downcase! }
  before_create :create_remember_token

  validates_presence_of :username
  validates_presence_of :name
  validates_presence_of :password
  validates_presence_of :email
  validates_presence_of :usertype
  validates_uniqueness_of :email, case_sensitive: false
  validates_uniqueness_of :username
  validates_format_of :email, with: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i, allow_blank: false

  def User.new_remember_token
	SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
	Digest::SHA1.hexdigest(token.to_s)
  end

  private 

	def create_remember_token
		self.remember_token = User.encrypt(User.new_remember_token)
	end
end