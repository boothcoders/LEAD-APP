require 'test_helper'

class GoalAttemptsControllerTest < ActionController::TestCase
  setup do
    @goal_attempt = goal_attempts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goal_attempts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goal_attempt" do
    assert_difference('GoalAttempt.count') do
      post :create, goal_attempt: { ended_on: @goal_attempt.ended_on, goal_id: @goal_attempt.goal_id, started_on: @goal_attempt.started_on, user_id: @goal_attempt.user_id }
    end

    assert_redirected_to goal_attempt_path(assigns(:goal_attempt))
  end

  test "should show goal_attempt" do
    get :show, id: @goal_attempt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goal_attempt
    assert_response :success
  end

  test "should update goal_attempt" do
    patch :update, id: @goal_attempt, goal_attempt: { ended_on: @goal_attempt.ended_on, goal_id: @goal_attempt.goal_id, started_on: @goal_attempt.started_on, user_id: @goal_attempt.user_id }
    assert_redirected_to goal_attempt_path(assigns(:goal_attempt))
  end

  test "should destroy goal_attempt" do
    assert_difference('GoalAttempt.count', -1) do
      delete :destroy, id: @goal_attempt
    end

    assert_redirected_to goal_attempts_path
  end
end
