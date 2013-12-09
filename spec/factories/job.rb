include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :job do
    title { Faker::Name.title }
    employed_from { Faker::Business.credit_card_expiry_date }
    employed_to { Faker::Business.credit_card_expiry_date }

    # associations
    user
    restaurant

    trait :with_reviews do
      ignore do
        review_count 1 # tells FG this is NOT an attribute
      end

      after(:create) do |job, evaluator|
        FactoryGirl.create_list :review, evaluator.comment_count, job: job
      end
    end

    factory :job_with_reviews, traits: [:with_reviews]
  end
end
