FactoryGirl.define do
  factory :artist do
    name {Faker::Name.name}
    picture {"http://res.cloudinary.com/den2bvoo7/image/upload/v1489911636/artist_3_vtpvcg.jpg"}
    bio {Faker::Lorem.paragraph}
    born {1.day.from_now.to_date}
    died {50.years.from_now.to_date}
  end
end
