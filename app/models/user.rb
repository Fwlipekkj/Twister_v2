class User < ApplicationRecord
  has_many :posts
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, email_format: true
  validates :password, presence: true
  validates :password, confirmation: {case_sensitive: true}

  def generate_password_token!
    self.reset_password_token = generate_token
    self.reset_password_sent_at = Time.now
    save!
  end

  def password_token_valid?
    (self.reset_password_sent_at + 4.hours) > Time.now
  end

  def reset_password!(password)
    self.reset_password_token = nil
    self.password = password
    save!
  end

  private

  def generate_token
    SecureRandom.hex(10)
  end
end
