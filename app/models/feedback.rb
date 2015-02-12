class Feedback < ActiveRecord::Base
    belongs_to(:enterer, { :class_name => "User", :foreign_key => "enterer_id" })
    belongs_to(:enteree, { :class_name => "User", :foreign_key => "enteree_id" })
    
    belongs_to :goal_attempt
    belongs_to :interaction
end
