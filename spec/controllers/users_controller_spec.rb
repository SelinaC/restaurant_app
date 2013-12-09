require "spec_helper"
include ActionDispatch::TestProcess

describe UsersController do

  before(:each) do
    @user1 = FactoryGirl.create :user
    @user.confirm!
    @user2 = FactoryGirl.create :foodie
    @user2.confirm!
    @user3 = FactoryGirl.create :admin
    @user3.confirm!
  end

  describe "GET #index" do
    let!(:users){ [@user1, @user2, @user3] }

    it "should instantiate @users with all users in the database" do
      get :index
      expect(assigns[:users]).to eq(users)
    end

    it "should render index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested user to @user" do
      @user = Factory(:user)
      get :show, id: user
      assigns(:user).should eq(user)
    end

    it "renders the #show view" do
      get :show, id: Factory(:user) #change to @user?
      response.should render_template :show
    end
  end

  describe "POST #create" do
    let(:user_data){ [@user1, @user2, @user3] }
      it "should instantiate @user with all users in the database" do
        post :create, params: {user: user_data}
        expect(assigns[:users]).to eq(users)
    end
  end

  describe "PUT #update" do
    it "should allow the user to be updated" do
      put :update, :id => @user1.id, :user => @user1
        @user1.reload
        @user1.first_name.should == @user1[:first_name]
        @user1.last_name.should == @user1[:last_name]
    end
  end

  # describe "DELETE #destroy" do
  #   it "should delete the user" do
  #     expect{
  #       delete :destroy, :id => @user, :password => "password"
  #     }.to change(User, :count).by(-1)
  #   end
  # end

end
