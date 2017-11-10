FactoryGirl.define do
  factory :registration do
    user ""
    event nil
    user_id 1
    event_id 1
    status "MyString"
    price "9.99"
    guest_count 1
  end
end
