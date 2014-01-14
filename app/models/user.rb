class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :confirmable,
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :timeoutable,
         :omniauthable,
         {
          :omniauth_providers => [:google_oauth2, :facebook, :linkedin]
          }

  # Setup accessible (or protected) attributes for your model

  attr_accessible :username, :first_name, :last_name, :email, :image, :role, :password, :password_confirmation, :remember_me, :remote_image_url

  has_many :jobs, dependent: :destroy
  has_many :restaurants, through: :jobs
  has_many :reviews, dependent: :destroy
  has_many :authorizations, dependent: :destroy

  mount_uploader :image, UserImageUploader

  accepts_nested_attributes_for :jobs

  def has_role?(r)
    self.role == r.to_s
  end

  def update_without_password(params={})
    super(params.delete(:current_password))
  end

  validates :username, presence: true, uniqueness: true

  def self.from_omniauth(auth)
    # authorization = Authorization.where(:provider => auth.provider, :uid => auth.uid.to_s, :token => auth.credentials.token, :secret => auth.credentials.secret).first_or_initialize
    if user = User.find_by_email(auth.info.email)
      if authorization = user.authorizations.where(auth.slice(:provider, :uid)).count > 0
        user
      else
        profile_set(auth, user)
        user.authorizations.create! :provider => auth.provider, :uid => auth.uid
        user
      end
    else
      user = User.new
      profile_set(auth, user)
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      # user.skip_confirmation!
      user.save! unless user.email.blank?
      authorization = Authorization.where(auth.slice(:provider, :uid)).first_or_create do |a|
        a.provider = auth.provider
        a.uid = auth.uid
        a.user = user
        a
      end
      user
    end
  end

  def self.profile_set(auth, user)
      # user.authorization # add to user authorizations
      # user.provider = auth.provider
      # user.uid = auth.uid
    case auth.provider
    when "linkedin"
      user.username = auth.info.name unless user.username?
    else
      user.username = auth.info.first_name + auth.info.last_name unless user.username?
    end

    user.first_name = auth.info.first_name unless user.first_name?
    user.last_name = auth.info.last_name unless user.last_name?
    user.role = "foodie" unless user.role?
    image_set(auth, user) unless user.image?
  end

  # http://api.linkedin.com/v1/people/~

  def self.image_set(auth, user)
    case auth.provider
    when "facebook"
      graph = Koala::Facebook::API.new(auth.credentials.token)
      profile = "http://graph.facebook.com/" + graph.get_object("me")['username'] + "/picture?type=large"
      user.remote_image_url = profile
    when "google_oauth2"
      user.remote_image_url = auth.info.image
    when "linkedin"
      user.remote_image_url = auth.info.image
    end
  end

end



# role - allow mass assignment?

 # after_create :default_role

 #  private
 #  def default_role
 #    self.roles << Role.where(:name => 'User').first
 #  end
