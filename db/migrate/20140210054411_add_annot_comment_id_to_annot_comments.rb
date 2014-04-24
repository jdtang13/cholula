class AddAnnotCommentIdToAnnotComments < ActiveRecord::Migration
  def change
    add_column :annot_comments, :annot_comment_id, :integer
  end
end
