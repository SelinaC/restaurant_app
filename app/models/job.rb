class Job < ActiveRecord::Base

  attr_accessible :user_id, :restaurant_id, :employed_from, :employed_to, :job_title, :job_description

  belongs_to :user
  belongs_to :restaurant

end

# :user_id - mass assignment? or set to only current user. do with cancan?
