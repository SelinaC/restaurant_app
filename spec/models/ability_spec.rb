require "spec_helper"
require "cancan/matchers"

describe "User" do

  before(:each) do
    @user1 = FactoryGirl.create :user
    @user.confirm!
    @user2 = FactoryGirl.create :foodie
    @user2.confirm!
    @user3 = FactoryGirl.create :admin
    @user3.confirm!
    @ability1 = Ability.new(@user1)
    @ability2 = Ability.new(@user2)
    @ability3 = Ability.new(@user3)
  end

  describe "user" do

    it "should be able to create " do
      @ability1.should be_able_to(:create,user1.)
    end

    it " should be able to update " do
      @ability1.should be_able_to(:update, @user1.)
    end

    it " should be able to destroy " do
      @ability1.should be_able_to(:destroy, @user1.)
    end

  # add tests for should nots

end
