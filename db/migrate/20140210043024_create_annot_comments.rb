class CreateAnnotComments < ActiveRecord::Migration
  def change
    create_table :annot_comments do |t|
      t.string :body

      t.timestamps
    end
  end
end
