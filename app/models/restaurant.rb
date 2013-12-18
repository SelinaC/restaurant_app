class Restaurant < ActiveRecord::Base

  attr_accessible :image

  has_many :jobs
  has_many :users, through: :jobs
  has_many :reviews

  mount_uploader :image, RestaurantImageUploader

  # def self.fhrs_image
  #   case Restaurant.hygiene_rating
  #     when 0
  #       @fhrs_image = "/assets/fhrs_0_en-gb.jpg"
  #     when 1
  #       @fhrs_image = "/assets/fhrs_1_en-gb.jpg"
  #     when 2
  #       @fhrs_image = "/assets/fhrs_2_en-gb.jpg"
  #     when 3
  #       @fhrs_image = "/assets/fhrs_3_en-gb.jpg"
  #     when 4
  #       @fhrs_image = "/assets/fhrs_4_en-gb.jpg"
  #     when 5
  #       @fhrs_image = "/assets/fhrs_5_en-gb.jpg"
  #     else
  #       @fhrs_image = nil
  #   end
  # end

end

# :name, :address1, :address2, :town, :postcode, :phone, :cuisine, :email, :website, :image, :hygiene_rating, :hygiene_rating_date, :longitude, :latitude

