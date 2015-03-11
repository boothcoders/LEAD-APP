class FeedbacksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @feedbacks = Feedback.all
    respond_with(@feedbacks)
  end

  def show
    respond_with(@feedback)
  end

  def new
    @feedback = Feedback.new
    @request = params[:request]

    respond_with(@feedback)
  end

  def edit
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.save
    @request = Request.find_by(:id=>@feedback.request_id)
    @request.feedback_completed = 'TRUE'
    @request.save
    respond_with(@feedback)
  end

  def update
    @feedback.update(feedback_params)
    respond_with(@feedback)
  end

  def destroy
    @feedback.destroy
    respond_with(@feedback)
  end

  private
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    def feedback_params
      params.require(:feedback).permit(:enterer_id, :enteree_id, :goal_id, :interaction_id, :entry_date, :entry_note, :entry_rating, :request_id)
    end
end
