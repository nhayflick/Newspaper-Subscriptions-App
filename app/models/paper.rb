class Paper < ActiveRecord::Base
  attr_accessible :editor, :title
  validates :editor, :presence => :true
  validates :title, :presence => :true
end
