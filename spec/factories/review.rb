include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :review do
    title { Faker::Lorem.sentence}
    body { Faker::Lorem.sentence}

    # associations
    # user
    # restaurant
  end
end
