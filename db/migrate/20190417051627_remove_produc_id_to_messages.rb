class RemoveProducIdToMessages < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :messages, :products
  end
end
