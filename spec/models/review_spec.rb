require "spec_helper"

describe "Restaurant" do

  before(:each) do
    @user = FactoryGirl.create :user_with_restaurants
    @user.confirm!
    sign_in @user
  end

  describe "validations" do
    # let review be the review belonging to a user
    # it{ should validate_presence_of :}
    # should belong to a user and a restaurant that the user has worked at
  end

  describe "mass assignment" do

  end
end
