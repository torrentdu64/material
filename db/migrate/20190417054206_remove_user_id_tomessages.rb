class RemoveUserIdTomessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :user_id
  end
end
