class Message < ApplicationRecord
  belongs_to :product
  belongs_to :chat_room
end
