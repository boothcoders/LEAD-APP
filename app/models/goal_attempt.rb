class GoalAttempt < ActiveRecord::Base

    belongs_to :user
    belongs_to :goal
    has_many :feedbacks

end
