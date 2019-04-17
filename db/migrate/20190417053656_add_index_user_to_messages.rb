class AddIndexUserToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :users, index: true
  end
end
