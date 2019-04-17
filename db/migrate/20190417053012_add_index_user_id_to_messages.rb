class AddIndexUserIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :user_id, index: true
  end
end
