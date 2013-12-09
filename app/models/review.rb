class Review < ActiveRecord::Base

  attr_accessible

  belongs_to :user
  belongs_to :restaurant

end
