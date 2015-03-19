# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Add Users

user = [
{
  :first_name => "Super",
  :last_name => "Mario",
  :email => "a@example.com",
  :cohort_id =>1
},
{
  :first_name => "Super",
  :last_name => "Luigi",
  :email => "b@example.com",
  :cohort_id =>1
},
{
  :first_name => "Princess",
  :last_name => "Leah",
  :email => "c@example.com",
  :cohort_id => 1
},
{
  :first_name => "Mia",
  :last_name => "Hamm",
  :email => "d@example.com",
  :cohort_id => 1
},
{
  :first_name => "Oprah",
  :last_name => "Winfrey",
  :email => "e@example.com",
  :cohort_id => 1
},
{
  :first_name => "Darth",
  :last_name => "Vader",
  :email => "f@example.com",
  :cohort_id =>3
},
{
  :first_name => "Ben",
  :last_name => "Kenobi",
  :email => "g@example.com",
  :cohort_id => 1
},
{
  :first_name => "Luke",
  :last_name => "Skywalker",
  :email => "h@example.com",
  :cohort_id =>3
},
{
  :first_name => "Han",
  :last_name => "Solo",
  :email => "i@example.com",
  :cohort_id => 1
},
{
  :first_name => "R2",
  :last_name => "D2",
  :email => "j@example.com",
  :cohort_id => 1
},
{
  :first_name => "C3",
  :last_name => "PO",
  :email => "k@example.com",
  :cohort_id => 1
},
{
  :first_name => "George",
  :last_name => "Washington",
  :email => "l@example.com",
  :cohort_id =>1
},
{
  :first_name => "Abraham",
  :last_name => "Lincoln",
  :email => "m@example.com",
  :cohort_id =>1
},
{
  :first_name => "George",
  :last_name => "Bush",
  :email => "n@example.com",
  :cohort_id =>3
},
{
  :first_name => "Michael",
  :last_name => "Jordan",
  :email => "o@example.com",
  :cohort_id =>3
},
{
  :first_name => "Kobe",
  :last_name => "Bryant",
  :email => "p@example.com",
  :cohort_id =>2
},
{
  :first_name => "Derrick",
  :last_name => "Rose",
  :email => "q@example.com",
  :cohort_id =>3
},
{
  :first_name => "Pau",
  :last_name => "Gasol",
  :email => "r@example.com",
  :cohort_id =>2
},
{
  :first_name => "Peyton",
  :last_name => "Manning",
  :email => "s@example.com",
  :cohort_id =>2
},
{
  :first_name => "Eli",
  :last_name => "Manning",
  :email => "t@example.com",
  :cohort_id =>2
},
{
  :first_name => "Archie",
  :last_name => "Manning",
  :email => "u@example.com",
  :cohort_id =>1
},
{
  :first_name => "Harrison",
  :last_name => "Ford",
  :email => "v@example.com",
  :cohort_id =>1
},
{
  :first_name => "Ben",
  :last_name => "Brabston",
  :email => "w@example.com",
  :cohort_id =>3
},
{
  :first_name => "Linh",
  :last_name => "Lam",
  :email => "x@example.com",
  :cohort_id =>2
},
{
  :first_name => "Tom",
  :last_name => "Besio",
  :email => "y@example.com",
  :cohort_id =>3
},
{
  :first_name => "Rafi",
  :last_name => "Nulman",
  :email => "z@example.com",
  :cohort_id =>2
}
]

user.each do |user_new|
  user = User.new
  user.email = user_new[:email]
  user.password = "12345678"
  user.password_confirmation = "12345678"
  user.first_name = user_new[:first_name]
  user.last_name = user_new[:last_name]
  user.cohort_id = user_new[:cohort_id]
  user.save
end

puts "There are now #{User.count} users in the database."

# Add Cohorts

cohort = [
{
  :cohort_name => "LEAD 2014"
},
{
  :cohort_name => "Kapnick 2014"
},
{
  :cohort_name => "Aon Exec Program 2014"
},
{
  :cohort_name => "LEAD 2015"
},
{
  :cohort_name => "Kapnick 2015"
},
{
  :cohort_name => "Aon Exec Program 2015"
},
{
  :cohort_name => "LEAD Staff 2014"
},
{
  :cohort_name => "LEAD Staff 2015"
}
]

cohort.each do |cohort_new|
  cohort = Cohort.new
  cohort.cohort_name = cohort_new[:cohort_name]
  cohort.save
end

puts "There are now #{Cohort.count} cohorts in the database."

# Add Goals

goal = [
{
  :goal_name => "Listening",
  :goal_description => "Improve active listening ability"
},
{
  :goal_name => "Speaking",
  :goal_description => "Stronger command of the room, fewer filler words, more confidence"
},
{
  :goal_name => "Management",
  :goal_description => "Follow through on all promises and stay organized"
},
{
  :goal_name => "Participation",
  :goal_description => "Active participation in all meetings, including helping others"
},
{
  :goal_name => "Likeability",
  :goal_description => "More smiling, jokes, and friendliness - be a hub for more people to reach out to"
},
{
  :goal_name => "Focus",
  :goal_description => "More engagement with everyone on the team - fewer distractions"
}
]

goal.each do |goal_new|
  goal = Goal.new
  goal.goal_name = goal_new[:goal_name]
  goal.goal_description = goal_new[:goal_description]
  goal.save
end

puts "There are now #{Goal.count} goals in the database."


# Add Goal Attempts

goal_attempt = [
{
  :user_id => 1,
  :goal_id => 2,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 2,
  :goal_id => 1,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 3,
  :goal_id => 2,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 4,
  :goal_id => 5,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 5,
  :goal_id => 3,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 6,
  :goal_id => 2,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 7,
  :goal_id => 4,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 8,
  :goal_id => 4,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 9,
  :goal_id => 1,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 10,
  :goal_id => 2,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 11,
  :goal_id => 3,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 12,
  :goal_id => 6,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 13,
  :goal_id => 6,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 14,
  :goal_id => 1,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 15,
  :goal_id => 2,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 16,
  :goal_id => 3,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 17,
  :goal_id => 5,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 18,
  :goal_id => 3,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 19,
  :goal_id => 2,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 20,
  :goal_id => 3,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 21,
  :goal_id => 1,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 22,
  :goal_id => 4,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 23,
  :goal_id => 3,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 24,
  :goal_id => 6,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 25,
  :goal_id => 5,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
},
{
  :user_id => 26,
  :goal_id => 4,
  :started_on => DateTime.parse("01/01/2015"),
  :ended_on => DateTime.parse("01/01/2016")
}
]

goal_attempt.each do |goal_attempt_new|
  goal_attempt = GoalAttempt.new
  goal_attempt.user_id = goal_attempt_new[:user_id]
  goal_attempt.goal_id = goal_attempt_new[:goal_id]
  goal_attempt.started_on = goal_attempt_new[:started_on]
  goal_attempt.ended_on = goal_attempt_new[:ended_on]
  goal_attempt.save
end

puts "There are now #{GoalAttempt.count} goal_attempts in the database."


# Add Interactions

interaction = [
{
  :user_id => 1,
  :interaction_title => "App D Session",
  :interaction_date => DateTime.parse("02/02/2015"),
  :interaction_notes => "Good times were had"
},
{
  :user_id => 1,
  :interaction_title => "Goolsbee Discussion",
  :interaction_date => DateTime.parse("02/03/2015"),
  :interaction_notes => "Hungover"
},
{
  :user_id => 1,
  :interaction_title => "ICEE work",
  :interaction_date => DateTime.parse("02/03/2015"),
  :interaction_notes => "Caffeinated - fully engaged"
},
{
  :user_id => 2,
  :interaction_title => "App D Session",
  :interaction_date => DateTime.parse("02/02/2015"),
  :interaction_notes => "Had to leave early - other meeting"
},
{
  :user_id => 2,
  :interaction_title => "Cubs Game",
  :interaction_date => DateTime.parse("02/02/2015"),
  :interaction_notes => "Cubs lost"
},
{
  :user_id => 3,
  :interaction_title => "Cubs Game",
  :interaction_date => DateTime.parse("02/02/2015"),
  :interaction_notes => "Cubs lost"
},
{
  :user_id => 3,
  :interaction_title => "BRIO Session",
  :interaction_date => DateTime.parse("02/03/2015"),
  :interaction_notes => "Overall well - had to deal with a phone call halfway through though"
}
]

interaction.each do |interaction_new|
  interaction = Interaction.new
  interaction.user_id = interaction_new[:user_id]
  interaction.interaction_title = interaction_new[:interaction_title]
  interaction.interaction_date = interaction_new[:interaction_date]
  interaction.interaction_notes = interaction_new[:interaction_notes]
  interaction.save
end

puts "There are now #{Interaction.count} interactions in the database."


# Add Requests

request = [
{
  :requestor_id => 1,
  :requestee_id => 2,
  :interaction_id => 1,
  :goal_id => 2,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 1,
  :requestee_id => 4,
  :interaction_id => 1,
  :goal_id => 2,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 1,
  :requestee_id => 5,
  :interaction_id => 1,
  :goal_id => 2,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 2,
  :requestee_id => 1,
  :interaction_id => 5,
  :goal_id => 1,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 2,
  :requestee_id => 1,
  :interaction_id => 5,
  :goal_id => 1,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 2,
  :requestee_id => 20,
  :interaction_id => 5,
  :goal_id => 1,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 3,
  :requestee_id => 1,
  :interaction_id => 6,
  :goal_id => 2,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 3,
  :requestee_id => 2,
  :interaction_id => 7,
  :goal_id => 2,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 0
},
{
  :requestor_id => 3,
  :requestee_id => 10,
  :interaction_id => 7,
  :goal_id => 2,
  :feedback_note => "Merica",
  :feedback_completed => 1
},
{
  :requestor_id => 3,
  :requestee_id => 10,
  :interaction_id => 7,
  :goal_id => 2,
  :feedback_note => "Just some quick thoughts",
  :feedback_completed => 1
}
]

request.each do |request_new|
  request = Request.new
  request.requestor_id = request_new[:requestor_id]
  request.requestee_id = request_new[:requestee_id]
  request.interaction_id = request_new[:interaction_id]
  request.goal_id = request_new[:goal_id]
  request.feedback_note = request_new[:feedback_note]
  request.feedback_completed = request_new[:feedback_completed]
  request.save
end

puts "There are now #{Request.count} requests in the database."


# Add Feedback

feedback = [
{
  :enterer_id => 3,
  :enteree_id => 1,
  :interaction_id => 1,
  :goal_id => 2,
  :entry_note => "You were awesome!",
  :entry_rating => 3
},
{
  :enterer_id => 4,
  :enteree_id => 1,
  :interaction_id => 1,
  :goal_id => 2,
  :entry_note => "Didn't realize you were there",
  :entry_rating => 2
},
{
  :enterer_id => 5,
  :enteree_id => 1,
  :interaction_id => 1,
  :goal_id => 2,
  :entry_note => "Are you okay?",
  :entry_rating => 3
},
{
  :enterer_id => 1,
  :enteree_id => 2,
  :interaction_id => 5,
  :goal_id => 1,
  :entry_note => "Great job!",
  :entry_rating => 3
},
{
  :enterer_id => 17,
  :enteree_id => 2,
  :interaction_id => 5,
  :goal_id => 1,
  :entry_note => "Major improvement over last time",
  :entry_rating => 3
},
{
  :enterer_id => 16,
  :enteree_id => 2,
  :interaction_id => 5,
  :goal_id => 1,
  :entry_note => "Had a great time hanging out with you",
  :entry_rating => 3
},
{
  :enterer_id => 11,
  :enteree_id => 1,
  :interaction_id => 2,
  :goal_id => 1,
  :entry_note => "Much better",
  :entry_rating => 3
},
{
  :enterer_id => 12,
  :enteree_id => 3,
  :interaction_id => 6,
  :goal_id => 2,
  :entry_note => "Same as before",
  :entry_rating => 3
},
{
  :enterer_id => 12,
  :enteree_id => 3,
  :interaction_id => 7,
  :goal_id => 2,
  :entry_note => "Nice improvement",
  :entry_rating => 3
},
{
  :enterer_id => 20,
  :enteree_id => 3,
  :interaction_id => 6,
  :goal_id => 2,
  :entry_note => "I noticed you were late…",
  :entry_rating => 1
}
]

feedback.each do |feedback_new|
  feedback = Feedback.new
  feedback.enterer_id = feedback_new[:enterer_id]
  feedback.enteree_id = feedback_new[:enteree_id]
  feedback.interaction_id = feedback_new[:interaction_id]
  feedback.goal_id = feedback_new[:goal_id]
  feedback.entry_note = feedback_new[:entry_note]
  feedback.entry_rating = feedback_new[:entry_rating]
  feedback.save
end

puts "There are now #{Feedback.count} feedbacks in the database."
