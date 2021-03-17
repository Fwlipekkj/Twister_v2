class Chat < ApplicationRecord
  has_many :messages
  has_many :chat_users
  has_many :users, through: :chat_users
end
