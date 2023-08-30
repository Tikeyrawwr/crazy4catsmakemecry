# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

i = 0
3.times do
  User.create(
    email: "test#{i}@gmail.com", 
    password: "123456",
    password_confirmation: "123456",
    name: Faker::Name.name,
    image: Faker::Avatar.image
  )
  i += 1
end

codes = [100, 101, 102, 103, 200, 201, 202, 203, 300, 301, 302, 303, 400, 401, 402, 403, 500, 501, 502, 503]
9.times do
  Publication.create(
    image: "https://http.cat/#{codes.sample}",
    title: Faker::Creature::Cat.breed,
    description: Faker::Lorem.paragraphs(number: 2),
    user_id: rand(1..3)
  )
end

20.times do
  Comment.create(
    content: Faker::Lorem.paragraphs(number: 2),
    publication_id: rand(1..9),
    user_id: rand(1..3)
  )
end

kinds = Publication::Kinds
50.times do
  Reaction.create(
    user_id: rand(1..3),
    publication_id: rand(1..9),
    kind: kinds.sample
  )
end
