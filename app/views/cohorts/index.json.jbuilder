json.array!(@cohorts) do |cohort|
  json.extract! cohort, :id, :cohort_name
  json.url cohort_url(cohort, format: :json)
end
