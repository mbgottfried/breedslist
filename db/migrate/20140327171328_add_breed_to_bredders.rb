class AddBreedToBredders < ActiveRecord::Migration
  def change
  	add_column :breeders, :breed, :string
  end
end
