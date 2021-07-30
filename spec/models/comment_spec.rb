require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new(content: "this is good", name: "marie", recipe: FactoryBot.create(:recipe)) }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid if no recipe is selected" do
    subject.recipe = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without content" do
    subject.content = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
