class CreateBreeders < ActiveRecord::Migration
  def change
    create_table :breeders do |t|
      t.string :description

      t.timestamps
    end
  end
end
