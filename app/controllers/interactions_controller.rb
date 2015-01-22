class InteractionsController < ApplicationController
  def index
    @interactions = Interaction.all
  end

  def show
    @interaction = Interaction.find(params[:id])
  end

  def new
    @interaction = Interaction.new
  end

  def create
    @interaction = Interaction.new
    @interaction.user_id = params[:user_id]
    @interaction.occurs_on = params[:occurs_on]
    @interaction.occurs_at = params[:occurs_at]
    @interaction.goal_id = params[:goal_id]
    @interaction.description = params[:description]
    @interaction.experiment_id = params[:experiment_id]

    if @interaction.save
      redirect_to "/interactions", :notice => "Interaction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @interaction = Interaction.find(params[:id])
  end

  def update
    @interaction = Interaction.find(params[:id])

    @interaction.user_id = params[:user_id]
    @interaction.occurs_on = params[:occurs_on]
    @interaction.occurs_at = params[:occurs_at]
    @interaction.goal_id = params[:goal_id]
    @interaction.description = params[:description]
    @interaction.experiment_id = params[:experiment_id]

    if @interaction.save
      redirect_to "/interactions", :notice => "Interaction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @interaction = Interaction.find(params[:id])

    @interaction.destroy

    redirect_to "/interactions", :notice => "Interaction deleted."
  end
end
