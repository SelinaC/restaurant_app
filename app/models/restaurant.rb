class Restaurant < ActiveRecord::Base

  attr_accessible

  has_many :jobs
  has_many :users, through: :jobs
  has_many :reviews

end
