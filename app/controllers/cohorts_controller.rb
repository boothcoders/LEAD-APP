class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new
    @cohort.name = params[:name]

    if @cohort.save
      redirect_to "/cohorts", :notice => "Cohort created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])

    @cohort.name = params[:name]

    if @cohort.save
      redirect_to "/cohorts", :notice => "Cohort updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cohort = Cohort.find(params[:id])

    @cohort.destroy

    redirect_to "/cohorts", :notice => "Cohort deleted."
  end
end
