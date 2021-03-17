class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat

  broadcasts_to :chat

  validates :user, :chat, :content, presence: true

  def edited?
    created_at != updated_at
  end
end
