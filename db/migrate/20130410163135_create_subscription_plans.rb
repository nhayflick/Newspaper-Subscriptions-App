class CreateSubscriptionPlans < ActiveRecord::Migration
  def change
    create_table :subscription_plans do |t|
      t.float :price
      t.boolean :weekly
      t.integer :paper_id
      
      t.timestamps
    end
  end
end
