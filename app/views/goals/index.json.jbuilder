json.array!(@goals) do |goal|
  json.extract! goal, :id, :goal_name, :goal_description
  json.url goal_url(goal, format: :json)
end
