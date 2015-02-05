json.array!(@goal_attempts) do |goal_attempt|
  json.extract! goal_attempt, :id, :user_id, :goal_id, :started_on, :ended_on
  json.url goal_attempt_url(goal_attempt, format: :json)
end
