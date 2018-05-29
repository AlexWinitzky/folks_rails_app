gender = ["male", "female"]
bool = [true, false]

20.times do
  Peep.create(
    name: Faker::TheFreshPrinceOfBelAir.character,
    age: rand(1..200),
    hair_color: Faker::Color.color_name,
    eye_color: Faker::Color.color_name,
    gender: gender.sample,
    alive: bool.sample
  )
end

puts 'seeded'