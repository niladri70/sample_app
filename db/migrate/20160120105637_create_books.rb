class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :name
    	t.integer :price
    	t.text :comments
      t.timestamps
    end
  end
end
