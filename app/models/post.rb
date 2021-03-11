class Post < ApplicationRecord
  belongs_to :user

  validates :message, presence: true

  has_one_attached :media

  # formaters
  def created_at_formated
    created_at.strftime('%d/%m/%Y %H:%M:%S')
  end
end