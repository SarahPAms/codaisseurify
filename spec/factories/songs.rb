FactoryGirl.define do
  factory :songs do
    title { Faker::HarryPotter.quote }
  end
end
