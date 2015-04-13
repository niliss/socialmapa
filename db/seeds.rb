# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

start_date = Faker::Date.forward(rand(1..150))
end_date = Faker::Date.forward(rand(150..200))
counter = 0
50.times do
	Institution.create(name: Faker::Company.name, category: "Environment", description: Faker::Lorem.words(500), phone: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, email: Faker::Internet.email, website: Faker::Internet.url )
	counter += 1
	2.times do
	Event.create(name: Faker::Company.name, description: Faker::Lorem.words(500), initial_date: start_date, end_date: end_date, event_type: "false", institution_id: counter, latitude: 6.199336, longitude: -75.572934)
	end
end