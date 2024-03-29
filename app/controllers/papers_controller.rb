class PapersController < ApplicationController

  def new
    @paper = Paper.new
    @paper.subscription_plans.build
    @paper.subscription_plans.build
  end

  def create
    @paper = Paper.new(params[:paper])
    if @paper.save
      redirect_to @paper
    else
      render :new
    end
  end

  def show
    @paper = Paper.find(params[:id])
  end
end