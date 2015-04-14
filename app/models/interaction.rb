class Interaction < ActiveRecord::Base

    belongs_to :user
    has_many :requests
    has_many :feedbacks
    
    validates :interaction_title, :presence => true
    
    def requests_sent
        self.requests.count
    end
    
    def requests_complete
        self.requests.where({:feedback_completed => TRUE}).count
    end
end
