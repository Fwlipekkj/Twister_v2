class User < ApplicationRecord
  has_many :posts
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, email_format: true
  validates :password, presence: true
  validates :password, confirmation: {case_sensitive: true}
end
