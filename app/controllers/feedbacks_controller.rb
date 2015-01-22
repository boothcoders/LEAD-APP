class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new
    @feedback.writer_id = params[:writer_id]
    @feedback.receiver_id = params[:receiver_id]
    @feedback.goal_id = params[:goal_id]
    @feedback.interaction_id = params[:interaction_id]
    @feedback.request_id = params[:request_id]
    @feedback.qualitative_fb = params[:qualitative_fb]
    @feedback.quantitative_fb = params[:quantitative_fb]

    if @feedback.save
      redirect_to "/feedbacks", :notice => "Feedback created successfully."
    else
      render 'new'
    end
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])

    @feedback.writer_id = params[:writer_id]
    @feedback.receiver_id = params[:receiver_id]
    @feedback.goal_id = params[:goal_id]
    @feedback.interaction_id = params[:interaction_id]
    @feedback.request_id = params[:request_id]
    @feedback.qualitative_fb = params[:qualitative_fb]
    @feedback.quantitative_fb = params[:quantitative_fb]

    if @feedback.save
      redirect_to "/feedbacks", :notice => "Feedback updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])

    @feedback.destroy

    redirect_to "/feedbacks", :notice => "Feedback deleted."
  end
end
