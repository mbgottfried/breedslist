class AddLocationToBreeders < ActiveRecord::Migration
  def change
  	add_column :breeders, :location, :string
  end
end
