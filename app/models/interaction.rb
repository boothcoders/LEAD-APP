class Interaction < ActiveRecord::Base

    belongs_to :user
    has_many :requests
    has_many :feedbacks
    
    validates :interaction_title, :presence => true
end
