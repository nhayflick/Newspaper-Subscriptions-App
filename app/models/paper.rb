class Paper < ActiveRecord::Base
  attr_accessible :editor, :title, :subscription_plans_attributes

  has_many :subscription_plans, :inverse_of => :paper
  accepts_nested_attributes_for :subscription_plans, :reject_if => :all_blank

  validates :editor, :presence => :true
  validates :title, :presence => :true
end
