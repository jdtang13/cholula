class Annotation < ActiveRecord::Base
  belongs_to :book
  belongs_to :analysis
  belongs_to :user

  has_many :annot_comments
  
end
