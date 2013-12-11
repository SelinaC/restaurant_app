class UsersController < Devise::RegistrationsController

  def index
    @users = User.all
    # must change to differentiate 'staff' users from 'foodie' users
  end

  def show
    @user = User.find params[:id]
  end

end
