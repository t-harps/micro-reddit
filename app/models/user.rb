class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	
	validates :username, presence: true, length: {maximum: 15}, uniqueness: {case_sesitive: false}
	validates :password, presence: true, length: {minimum: 6}
end
