class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.text :body
      
	  t.integer :location_start
	  t.integer :location_end
	  
      t.decimal :score
      t.references :book, index: true
      t.references :user, index: true
	  t.references :analysis, index: true

      t.timestamps
    end
  end
end
