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

  attr_accessible :username, :first_name, :last_name, :email, :image, :role, :password, :password_confirmation, :remember_me, :remote_image_url

  has_many :jobs, dependent: :destroy
  has_many :restaurants, through: :jobs
  has_many :reviews, dependent: :destroy

  mount_uploader :image, UserImageUploader

  accepts_nested_attributes_for :jobs

  def has_role?(r)
    self.role == r.to_s
  end

  def update_without_password(params={})
    super(params.delete(:current_password))
  end

  validates :username, uniqueness: true
  validates :username, presence: true

end

# role - allow mass assignment?

 # after_create :default_role

 #  private
 #  def default_role
 #    self.roles << Role.where(:name => 'User').first
 #  end
