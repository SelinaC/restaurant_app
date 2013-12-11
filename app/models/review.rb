class Review < ActiveRecord::Base

  attr_accessible :user_id, :restaurant_id, :title, :body

  belongs_to :user
  belongs_to :restaurant

end


