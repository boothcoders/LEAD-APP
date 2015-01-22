# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed cohorts
	cohorts = Cohort.create([{name: "LEAD facils"}])

# Seed experiment
	experiments = Experiment.create([{name: "Shut off phone", description: "Turn off your phone so as to be more engagd and avoid distractions", goal_id: 1}])

# Seed feedback
	feedbacks = Feedback.create([{writer_id: 1, receiver_id: 1, goal_id: 1, interaction_id: 1, request_id: 1, qualitative_fb: "This is qualitative feedback", quantitative_fb: 3}])

# Seed goals
	goals = Goal.create([{user_id: 1, starts_on: "1/1/2015", ends_on: "1/10/2015", description: "Try to listen better"}])

# Seed interactions
	interactions = Interaction.create([{user_id: 1, occurs_on: "1/5/2015", occurs_at: 6, goal_id: 1, description: "Team meeting", experiment_id: 1}])

# Seed requests
	requests = Request.create([{requester_id: 1, requested_id: 1, goal_id: 1, interaction_id: 1}])