include ActionDispatch::TestProcess

FactoryGirl.define do

  factory :user do
    trait :with_restaurants do
      ignore do
        restaurant_count 2 # tells FG this is NOT an attribute
      end

      after(:create) do |user, evaluator|
        FactoryGirl.create_list :restaurant_with_jobs_with_reviews, evaluator.restaurant_count, user: user
      end
    end

    sequence(:username) { |n| "username-#{n}" } #sequence
    email { "#{username}@gmail.com" }       #dependent attribute
    password "password"
    role "staff"

    factory :user_with_restaurants, traits: [:with_restaurants]

    factory :foodie do
      role "foodie"
    end

    factory :admin do
      role "admin"
      factory :admin_with_restaurants, traits: [:with_restaurants]
    end
  end
end
