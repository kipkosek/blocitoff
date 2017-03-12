FactoryGirl.define do
  factory :item do
    name Faker::Hacker.verb
    user
  end
end
