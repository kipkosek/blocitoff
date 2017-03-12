# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create Users
5.times do
  User.create!(
    username: Faker::Ancient.unique.hero,
    email: Faker::Internet.unique.email,
    password: "helloworld",
  )
end
users = User.all

#Create items
30.times do
  item = Item.create!(
    user: users.sample,
    name: Faker::Hacker.verb + " " + Faker::Hacker.noun
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
