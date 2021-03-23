class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat

  broadcasts_to :chat

  validates :user, :chat, :content, presence: true

  def edited?
    created_at != updated_at
  end

  def created_at_formated
    created_at.strftime('%d/%m/%Y %H:%M:%S')
  end

  def created_at_time
    created_at.strftime('%H:%M')
  end

  def created_at_year
    created_at.strftime('%Y')
  end
end
