class RemoveImageUsers < ActiveRecord::Migration[6.1]
  def change
     remove_column :users, :image_id, :string
  end
end
