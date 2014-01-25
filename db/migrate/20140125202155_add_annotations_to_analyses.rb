class AddAnnotationsToAnalyses < ActiveRecord::Migration
  def change
    add_reference :annotation, :analysis, index: true
  end
end
