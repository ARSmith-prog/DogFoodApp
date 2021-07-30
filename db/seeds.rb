9.times do
  Recipe.create({
                  title: Faker::Food.dish,
                  description: Faker::Food.description,
                  ingredients: Faker::Food.fruits,
                  directions: Faker::Food.measurement
                })
end
