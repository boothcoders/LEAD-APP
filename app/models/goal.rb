class Goal < ActiveRecord::Base

  validates :goal_name, :uniqueness => true
  belongs_to :goal_attempts

end
