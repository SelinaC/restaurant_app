require "spec_helper"
include ActionDispatch::TestProcess

describe JobsController do

  before(:each) do
    @user = FactoryGirl.create :user_with_restaurants
    @user.confirm!
    sign_in @user
  end

  describe "GET #index" do
    # this shouldn't do anything - there is no page for /jobs
  end

  describe "GET #show" do
    # this shouldn't do anything - there is no page for /jobs
  end

  describe "POST #create" do
  end

  describe "PUT #update" do
  #
  end

  describe "DELETE #destroy" do

  end
end
