require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation tests" do
    it "make sure user has an email and a password" do
      # Create regular account with email and password
      user1 = User.new(email: "something@gmail.com", password: "password")
      user2 = User.new(password: "password")
      user3 = User.new(email: "something@gmail.com")
      expect(user1.valid?).to eq(true)
      expect(user2.valid?).to eq(false)
      expect(user3.valid?).to eq(false)
    end
  end

end