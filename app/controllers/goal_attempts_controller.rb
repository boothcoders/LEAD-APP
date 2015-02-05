class GoalAttemptsController < ApplicationController
  before_action :set_goal_attempt, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @goal_attempts = GoalAttempt.all
    respond_with(@goal_attempts)
  end

  def show
    respond_with(@goal_attempt)
  end

  def new
    @goal_attempt = GoalAttempt.new
    respond_with(@goal_attempt)
  end

  def edit
  end

  def create
    @goal_attempt = GoalAttempt.new(goal_attempt_params)
    @goal_attempt.save
    respond_with(@goal_attempt)
  end

  def update
    @goal_attempt.update(goal_attempt_params)
    respond_with(@goal_attempt)
  end

  def destroy
    @goal_attempt.destroy
    respond_with(@goal_attempt)
  end

  private
    def set_goal_attempt
      @goal_attempt = GoalAttempt.find(params[:id])
    end

    def goal_attempt_params
      params.require(:goal_attempt).permit(:user_id, :goal_id, :started_on, :ended_on)
    end
end
