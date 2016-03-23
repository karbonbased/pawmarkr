class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
    	t.float :lat
    	t.float :long
    	t.string :name
    	t.text :address

      t.timestamps null: false
    end
  end
end
