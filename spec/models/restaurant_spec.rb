require "spec_helper"

describe "Restaurant" do

  before(:each) do
    @user = FactoryGirl.create :user_with_restaurants
    @user.confirm!
    sign_in @user
  end

  describe "validations" do
    it{ should validate_presence_of :name}
  end

  describe "mass assignment" do

  end
end
