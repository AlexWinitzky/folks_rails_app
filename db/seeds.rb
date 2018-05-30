gender = ["male", "female"]
bool = [true, false]

20.times do
  peep = Peep.create(
    name: Faker::TheFreshPrinceOfBelAir.character,
    age: rand(1..200),
    hair_color: Faker::Color.color_name,
    eye_color: Faker::Color.color_name,
    gender: gender.sample,
    alive: bool.sample
  )
  1.times do
    Quote.create(
      body: Faker::Seinfeld.quote,
      peep_id: peep.id
    )
  end
end

puts 'seeded'