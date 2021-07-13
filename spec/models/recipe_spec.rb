require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { Recipe.new(title: "chicken Goodies", description: "The best stuff", ingredients: "chicken, kale, peas", directions: "bake in oven")}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
  subject.title=nil
  expect(subject).to_not be_valid
end
it "is not valid without a description" do
  subject.description=nil
  expect(subject).to_not be_valid
end

it "is not valid without ingredients" do
  subject.ingredients=nil
  expect(subject).to_not be_valid
end
it "is not valid without directions" do
  subject.directions=nil
  expect(subject).to_not be_valid
end


end
