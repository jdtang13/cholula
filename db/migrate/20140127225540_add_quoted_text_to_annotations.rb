class AddQuotedTextToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotations, :quoted_text, :string
  end
end
