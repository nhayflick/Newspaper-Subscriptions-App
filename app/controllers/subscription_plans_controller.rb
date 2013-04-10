class SubscriptionPlansController < ApplicationController
  def new
    @subscription_plan = SubscriptionPlan.new(:paper_id => params[:paper_id])
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    if @subscription_plan.save
      redirect_to paper_url(params[:subscription_plan][:paper_id])
    else
      render :new
    end
  end
end
