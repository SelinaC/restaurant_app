require "spec_helper"
include ActionDispatch::TestProcess

describe ReviewsController do

  before(:each) do
    @user = FactoryGirl.create :user_with_restaurants
    @user.confirm!
    sign_in @user
  end

  describe "GET #index" do
    # this shouldn't do anything - there is no page for /reviews
  end

  describe "GET #show" do
    # this shouldn't do anything - there is no page for /reviews
  end

  describe "POST #create" do
    let(:review_data){ [@user1.review.first, @user2.review.first, @user3.review.first] }
    it "should instantiate @review with reviews" do
      post :create, params: {review: review_data}
      expect(assigns[:users]).to eq(users)
    end
  end

  describe "PUT #update" do
  #
  end

  describe "DELETE #destroy" do

  end

end
