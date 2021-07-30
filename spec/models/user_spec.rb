require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(email: "jsmith@sample.com", password: "password") }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without an emial" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if the email address doesn't have a @" do
    subject.email = "fdfsdfsdf"
    expect(subject).to_not be_valid
  end

  it "is not valid if the password is not 8 chars" do
    expect(subject.password.length).to eql(8)
  end

end
