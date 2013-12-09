require "spec_helper"

describe "User" do
  before(:each) do
      @user1 = FactoryGirl.create :user
      # @user.confirm!
      @user2 = FactoryGirl.create :foodie
      # @user2.confirm!
      @user3 = FactoryGirl.create :admin
      # @user3.confirm!
    end

  describe "validations" do
    let!(:users){ [@user1, @user2, @user3] }
    it{ should validate_presence_of :username}
    it{ should validate_uniqueness_of :username}
    it{ should validate_presence_of :email}
    it{ should validate_uniqueness_of :email}
  end

  describe "mass assignment" do
    let!(:users){ [@user1, @user2, @user3] }
    # it { should allow_mass_assignment_of :attribute}
    # it { should allow_mass_assignment_of :attribute }
    # it { should_not allow_mass_assignment of :attribute }
  end
end
