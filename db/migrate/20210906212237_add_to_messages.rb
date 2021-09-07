class AddToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :name, :string
    add_column :messages, :recipient_id, :integer
    add_column :messages, :sender_id, :integer
  end
end
