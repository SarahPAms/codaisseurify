Song.delete_all
Artist.delete_all

artist1 = Artist.create!({ name: Faker::Name.name, picture: "http://res.cloudinary.com/den2bvoo7/image/upload/v1489911629/artist_1_a0kxkh.jpg", bio: Faker::Lorem.paragraph, born: 10.days.from_now.to_date, died: 90.years.from_now.to_date})

artist2 = Artist.create!({ name: Faker::Name.name, picture: "http://res.cloudinary.com/den2bvoo7/image/upload/v1489911631/artist_2_uvaw3j.jpg", bio: Faker::Lorem.paragraph, born: 3.days.from_now.to_date, died: 10.years.from_now.to_date})

artist3 = Artist.create!({ name: Faker::Name.name, picture: "http://res.cloudinary.com/den2bvoo7/image/upload/v1489911636/artist_3_vtpvcg.jpg", bio: Faker::Lorem.paragraph, born: 12.days.from_now.to_date, died: 70.years.from_now.to_date})

song1=Song.create!({ title: "I need some coffee to keep my love warm", genre: "acoustic", artist: artist1})
song2=Song.create!({ title: "Hiding behind my hair", genre: "emo", artist: artist2})
song3=Song.create!({ title: "Whaddaya want from me?", genre: "punk", artist: artist3})
