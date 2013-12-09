class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable,
         :timeoutable


  # Setup accessible (or protected) attributes for your model

  attr_accessible :username, :first_name, :last_name, :email, :password, :password_confirmation, :remember_me

  has_many :jobs
  has_many :restaurants, through: :jobs
  has_many :reviews

end
