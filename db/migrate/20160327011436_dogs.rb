class Dogs < ActiveRecord::Migration
  def change
  	 create_table :dogs do |t|
    	t.string :name
    	t.text :breeds
    	t.string :age
    	t.string :gender
    	t.text :contact
    	t.boolean :mix
    	t.string :size

      t.timestamps null: false
    end
  end
end
