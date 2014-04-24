class AddAnnotationIdToAnnotComments < ActiveRecord::Migration
  def change
    add_column :annot_comments, :annotation_id, :integer
  end
end
