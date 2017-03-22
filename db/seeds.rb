#Create Users
5.times do
  User.create!(
    username: Faker::Ancient.unique.hero,
    email: Faker::Internet.unique.email,
    password: "helloworld"
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
