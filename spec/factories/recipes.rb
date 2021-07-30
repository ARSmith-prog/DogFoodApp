require 'faker'
FactoryBot.define do
  factory :recipe do |f|
    f.title { Faker::Food.dish }
    f.description { Faker::Food.description }
    f.ingredients { Faker::Food.ingredients }
    f.directions { Faker::Food.description }

  end
end
