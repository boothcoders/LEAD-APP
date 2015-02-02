json.array!(@requests) do |request|
  json.extract! request, :id, :requestor_id, :requestee_id, :interaction_id, :goal_id, :feedback_note, :feedback_completed
  json.url request_url(request, format: :json)
end
