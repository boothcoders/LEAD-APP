class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @requests = Request.all
    respond_with(@requests)
  end

  def show
    respond_with(@request)
  end

  def new
    @request = Request.new
    @interaction_id = params[:interaction_id]
    respond_with(@request)
  end

  def edit
  end

  def create
      @request = Request.new(request_params)
      @request.save
      @interaction_id = @request.interaction_id
      UserMailer.feedback_request_notification(@request).deliver_now
      redirect_to interactions_list_path
  end

  def update
    @request.update(request_params)
    respond_with(@request)
  end

  def destroy
    @request.destroy
    respond_with(@request)
  end

  def decline
    @request.destroy

    @requests = Request.all
    respond_with(@requests)
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:requestor_id, :requestee_id, :interaction_id, :goal_id, :feedback_note, :feedback_completed)
    end
end
