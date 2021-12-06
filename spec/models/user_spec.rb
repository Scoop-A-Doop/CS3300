require 'rails_helper'

RSpec.describe User, type: :model do

  SimpleCov.start do
    add_filter do |source_file|
      source_file.lines.count < 5
    end
  end

  context "validation tests" do
    it "make sure user has an email and a password" do
      # Create regular account with email and password
      user1 = User.new(email: "something@gmail.com", password: "password")
      user2 = User.new(password: "password")
      user3 = User.new(email: "something@gmail.com")
      user4 = User.new()
      expect(user1.valid?).to eq(true)
      expect(user2.valid?).to eq(false)
      expect(user3.valid?).to eq(false)
      expect(user4.valid?).to eq(false)
    end
  end

  
end