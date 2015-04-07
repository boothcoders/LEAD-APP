class StaticPagesController < ApplicationController
    before_action :authenticate_user!
    
    def home
        all_requests = Request.where(:requestee_id => current_user.id)
        @outstanding_requests = all_requests.where.not(:feedback_completed => TRUE)
    end
    
    def my_progress
        @interactions = current_user.interactions.order("interaction_date DESC")
    end

    def my_progress_2
        @interactions = current_user.interactions.order("interaction_date DESC")
        @panel_heading = [0, "panel-danger", "panel-warning","panel-success"]
    end
    
    def about_page
    end
    
    def contact_page
    end

end
