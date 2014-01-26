class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.references :book, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
