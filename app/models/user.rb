class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :omniauthable, :confirmable,
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :timeoutable

  # Setup accessible (or protected) attributes for your model

  attr_accessible :username, :first_name, :last_name, :email, :image, :role, :password, :password_confirmation, :remember_me

  has_many :jobs
  has_many :restaurants, through: :jobs
  has_many :reviews


  accepts_nested_attributes_for :jobs


  def update_without_password(params={})
    super(params.delete(:current_password))
  end

end

# role - allow mass assignment?
