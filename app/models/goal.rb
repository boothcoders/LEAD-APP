class Goal < ActiveRecord::Base

  validates :goal_name, :uniqueness => true

end
