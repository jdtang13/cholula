class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.text :body
      t.integer :location_start
      t.double :score
      t.references :book, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
