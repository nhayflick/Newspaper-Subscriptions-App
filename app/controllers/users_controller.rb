class UsersController < ApplicationController
  def new
    @user = User.new
    @plans = SubscriptionPlan.all
    @plans.count.times { @user.subscriptions.build }
  end

  def create
    @user = User.new(params[:user])
    fail
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
