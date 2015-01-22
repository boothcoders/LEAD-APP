class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new
    @request.requester_id = params[:requester_id]
    @request.requested_id = params[:requested_id]
    @request.goal_id = params[:goal_id]
    @request.interaction_id = params[:interaction_id]

    if @request.save
      redirect_to "/requests", :notice => "Request created successfully."
    else
      render 'new'
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])

    @request.requester_id = params[:requester_id]
    @request.requested_id = params[:requested_id]
    @request.goal_id = params[:goal_id]
    @request.interaction_id = params[:interaction_id]

    if @request.save
      redirect_to "/requests", :notice => "Request updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @request = Request.find(params[:id])

    @request.destroy

    redirect_to "/requests", :notice => "Request deleted."
  end
end
