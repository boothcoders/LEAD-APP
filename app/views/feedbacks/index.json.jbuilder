json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :enterer_id, :enteree_id, :goal_id, :interaction_id, :entry_date, :entry_note, :entry_rating, :request_id
  json.url feedback_url(feedback, format: :json)
end
