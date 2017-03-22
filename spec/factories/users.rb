FactoryGirl.define do
  pw = "helloworld"
  factory :user do
    username Faker::Name.first_name
    sequence(:email){ |n| "username#{n}@factory.com" }
    password pw
    password_confirmation pw
  end
end
