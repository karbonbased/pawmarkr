class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
    	t.string :breed
    	t.string :name
    	t.integer :age
    	t.string :location
    	t.string :shelter
    	t.string :gender
    	t.string :size
    	t.boolean :housetrained
    	t.text :img_url
    	t.string :coatlength

      t.timestamps null: false
    end
  end
end
