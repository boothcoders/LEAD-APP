class Feedback < ActiveRecord::Base
    belongs_to(:enterer, { :class_name => "User", :foreign_key => "enterer_id" })
    belongs_to(:enteree, { :class_name => "User", :foreign_key => "enteree_id" })

    belongs_to :goal_attempt
    belongs_to :interaction
    
    validates :entry_rating, :presence => true

    # after_validation :update_requests

    # def update_requests
    #   if Request.find_by(:requestor_id => current_user.id).present?
    #     Request.find_by(:requestor_id => current_user.id).feedback_completed = true
    #   end
    # end

end
