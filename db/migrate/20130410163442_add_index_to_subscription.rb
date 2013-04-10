class AddIndexToSubscription < ActiveRecord::Migration
  def change
    add_index :subscription_plans, :paper_id, :unique => true
  end
end
