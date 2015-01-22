class Feedback < ActiveRecord::Base
	belongs_to :goal
	belongs_to :interaction
	belongs_to :request
	has_many :experiment
	belongs_to :user
end

