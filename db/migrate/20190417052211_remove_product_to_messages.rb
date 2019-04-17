class RemoveProductToMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :product_id
  end
end
