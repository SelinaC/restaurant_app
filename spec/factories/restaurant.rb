include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :restaurant do
    name { Faker::Company.name }
    address1 { Faker::Address.street_name}
    postcode { Faker::Address.postcode}

    # associations
    user

    trait :with_jobs_with_reviews do
      ignore do
        job_count 1 # tells FG this is NOT an attribute
      end

      after(:create) do |restaurant, evaluator|
        FactoryGirl.create_list :job_with_reviews, evaluator.job_count, restaurant: restaurant, user: restaurant.user
      end
    end

    factory :restaurant_with_jobs_with_reviews, traits: [:with_jobs_with_reviews]
  end
end
