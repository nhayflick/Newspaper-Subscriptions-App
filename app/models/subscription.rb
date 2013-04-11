class Subscription < ActiveRecord::Base
  attr_accessible :subscription_plan_id, :user_id
  belongs_to :subscription_plan, :autosave => :true
  belongs_to :user, :autosave => :true
  validates :subscription_plan, :user, :presence => :true
end
