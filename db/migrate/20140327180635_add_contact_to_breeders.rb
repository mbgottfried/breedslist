class AddContactToBreeders < ActiveRecord::Migration
  def change
  	add_column :breeders, :phone, :string
  	add_column :breeders, :reservation, :boolean
  	add_column :breeders, :deposit, :integer
  end
end
