class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  def new
    @experiment = Experiment.new
  end

  def create
    @experiment = Experiment.new
    @experiment.name = params[:name]
    @experiment.description = params[:description]
    @experiment.goal_id = params[:goal_id]

    if @experiment.save
      redirect_to "/experiments", :notice => "Experiment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @experiment = Experiment.find(params[:id])
  end

  def update
    @experiment = Experiment.find(params[:id])

    @experiment.name = params[:name]
    @experiment.description = params[:description]
    @experiment.goal_id = params[:goal_id]

    if @experiment.save
      redirect_to "/experiments", :notice => "Experiment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @experiment = Experiment.find(params[:id])

    @experiment.destroy

    redirect_to "/experiments", :notice => "Experiment deleted."
  end
end
