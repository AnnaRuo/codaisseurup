#spec/factories/events.rb

FactoryGirl.define do
  factory :event do
    event_name        "Blabla"
    location          "Utrecht"
    # price_count       20
    capacity_count    30
    listing_name      { Faker::Lorem.words(3).join(' ') }
    description       { Faker::Lorem.sentence(40) }
    address           { Faker::Address.city }
    includes_food     true
    includes_drinks   true
    starts_at         13/10
    ends_at           17/10
    price             { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
