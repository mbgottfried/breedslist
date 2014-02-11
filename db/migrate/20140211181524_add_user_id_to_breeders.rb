class AddUserIdToBreeders < ActiveRecord::Migration
  def change
    add_column :breeders, :user_id, :integer
    add_index :breeders, :user_id
  end
end
