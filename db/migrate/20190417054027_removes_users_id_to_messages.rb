class RemovesUsersIdToMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :users_id
  end
end
