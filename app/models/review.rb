class Review < ActiveRecord::Base

  attr_accessible :user_id, :restaurant_id, :title, :body, :recommended_for

  belongs_to :user
  belongs_to :restaurant

end


