class AddUserToAnnotComment < ActiveRecord::Migration
  def change
    add_column :annot_comments, :user_id, :integer
  end
end
