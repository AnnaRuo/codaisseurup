#spec/factories/events.rb

FactoryGirl.define do
  factory :event do
    name              "Blabla"
    location          "Utrecht"
    # price             "20.0"
    capacity          30
    description       { Faker::Lorem.sentence(40) }
    includes_food     true
    includes_drinks   true
    starts_at         2017/12/12
    ends_at           2017/12/14
    # price             { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
