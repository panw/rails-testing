require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  it "has none to begin with" do
    expect(Inquiry.count).to eq 0
  end

  it "has one after adding one" do
    user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
    Inquiry.create!(user: user)
    expect(Inquiry.count).to eq 1
  end
end
