require 'rails_helper'

RSpec.describe Dog, type: :model do
  subject { Dog.new( title: "jamie", age: 4, user: FactoryBot.create(:user) )}
it "is valid with valid attributes" do
  expect(subject).to be_valid
end

it "is not valid if no user is selected" do
  subject.user=nil
  expect(subject).to_not be_valid
end

it "is not valid without a name" do
  subject.title=nil
  expect(subject).to_not be_valid
end

it "is not valid without an age" do
  subject.age=nil
  expect(subject).to_not be_valid
end


end
