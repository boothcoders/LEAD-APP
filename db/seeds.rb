# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
  :cohort_id =>2
},
{
  :first_name => "Mia",
  :last_name => "Hamm",
  :email => "d@example.com",
  :cohort_id =>2
},
{
  :first_name => "Oprah",
  :last_name => "Winfrey",
  :email => "e@example.com",
  :cohort_id =>2
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
  :cohort_id =>2
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
  :cohort_id =>2
},
{
  :first_name => "R2",
  :last_name => "D2",
  :email => "j@example.com",
  :cohort_id =>2
},
{
  :first_name => "C3",
  :last_name => "PO",
  :email => "k@example.com",
  :cohort_id =>2
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
  user.save
end

puts "There are now #{User.count} users in the database."