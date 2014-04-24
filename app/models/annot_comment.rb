class AnnotComment < ActiveRecord::Base
	belongs_to :annot_comment
	belongs_to :annotation
	belongs_to :user
	has_many :annot_comments
end
