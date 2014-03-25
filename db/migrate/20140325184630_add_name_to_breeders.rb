class AddNameToBreeders < ActiveRecord::Migration
  def change
  	add_column :breeders, :name, :string
  end
end
