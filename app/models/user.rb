class User < ActiveRecord::Base
  attr_accessible :name, :subscription_plan_ids, :subscriptions, :subscription_plans
  has_many :subscriptions, :inverse_of => :user
  has_many :subscription_plans, :through => :subscriptions
end
