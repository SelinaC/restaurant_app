require "spec_helper"
include ActionDispatch::TestProcess

describe RestaurantsController do

  before(:each) do
    @user = FactoryGirl.create :user_with_restaurants
    @user.confirm!
    sign_in @user
  end

  describe "GET #index" do
    # need a let line here?

    it "should instantiate @restaurants with all restaurants in the database" do
      get :index
      expect(assigns[:restaurants]).to eq(restaurants)
    end

    it "should render index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested restaurant to @restaurant" do
      @restaurant = Factory(:restaurant)
      get :show, id: restaurant
      assigns(:restaurant).should eq(restaurant)
    end

    it "renders the #show view" do
      get :show, id: Factory(:restaurant) #change to @restaurant?
      response.should render_template :show
    end
  end

  describe "POST #create" do
  end

  # describe "PUT #update" do
  #
  # end

  # describe "DELETE #destroy" do
  # end

end
