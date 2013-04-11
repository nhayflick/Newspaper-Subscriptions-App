class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :weekly, :paper_id, :user_ids
  validates :price, :presence => :true
  validates :weekly, :inclusion => {:in => [true, false]}
  belongs_to :paper, :inverse_of => :subscription_plans
  has_many :subscriptions
  has_many :users, :through => :subscriptions
end
