json.array!(@interactions) do |interaction|
  json.extract! interaction, :id, :user_id, :interaction_title, :interaction_date, :interaction_notes
  json.url interaction_url(interaction, format: :json)
end
