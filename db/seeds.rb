# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name

user1 = User.find_or_create_by email: 'jason@gmail.com', name: 'Jason'
user2 = User.find_or_create_by email: 'raul@gmail.com', name: 'Raul'
user3 = User.find_or_create_by email: 'scott@gmail.com', name: 'Scott'
user4 = User.find_or_create_by email: 'chris@gmail.com', name: 'Chris'

[user, user1, user2, user3, user4].each do |u|
  u.password = "pas5word"
  u.save
end

def time_rand from = Time.now - 700.hours, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

(1..50).each do |i|
	workshift = WorkShift.find_or_create_by start_of_shift: time_rand
	workshift.end_of_shift = workshift.start_of_shift + 4.hours 
	workshift.user = [user1, user2, user3, user4].sample
	workshift.save
end

(1..100).each do |i|
	timeoff = TimeOff.find_or_create_by start_date: time_rand.to_date
	timeoff.end_date = timeoff.start_date + (1..5).to_a.sample.days
	timeoff.user = [user1, user2, user3, user4].sample
	timeoff.reason = "somereason"
	timeoff.save
end