class Annotation < ActiveRecord::Base
  belongs_to :book
  belongs_to :analysis
  belongs_to :user
  
end
