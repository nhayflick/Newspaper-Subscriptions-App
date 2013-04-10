class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :weekly, :paper_id
  validates :price, :presence => :true
  validates :weekly, :presence => :true
  belongs_to :newspaper
end
