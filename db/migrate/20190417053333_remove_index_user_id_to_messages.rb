class RemoveIndexUserIdToMessages < ActiveRecord::Migration[5.1]
  def change
    remove_index :messages, name: "index_messages_on_user_id_id"
  end
end
