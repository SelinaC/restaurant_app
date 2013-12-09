require "spec_helper"

describe "Job" do

  before(:each) do
    @user = FactoryGirl.create :user_with_restaurants
    @user.confirm!
    sign_in @user
  end

  describe "validations" do
      # presence of user id
      # presence of restaurant id
      # presence of employed from to dates
      # employed from and to formats must be date
      # employed from < employed to
  end

  describe "mass assignment" do

  end

end
