class Message < ApplicationRecord
  belongs_to :product
  belongs_to :chat_room
  validates :content, presence: true, allow_blank: false

  def from?(some_user)
    user == some_user
  end
end
