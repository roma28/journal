class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :password, length: { minimum: 6 }
	validates :email, presence: true, uniqueness: { case_sensetive: false }, format: { whith: "/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i" }
	before_save { self.email = email.downcase }
	has_secure_password
end
