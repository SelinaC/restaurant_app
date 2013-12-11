class UnusedRestaurant < ActiveRecord::Base

  attr_accessible

  has_many :jobs
  has_many :users, through: :jobs
  has_many :reviews


end

# :name, :address1, :address2, :town, :postcode, :phone, :cuisine, :email, :website, :image, :hygiene_rating, :hygiene_rating_date, :longitude, :latitude

