class StaticPagesController < ApplicationController
    before_action :authenticate_user!
    
    def home
    end
    
    def my_progress
        @interactions = current_user.interactions.order("interaction_date DESC")
    end

    def my_progress_2
        @interactions = current_user.interactions.order("interaction_date DESC")
        @panel_heading = [0, "panel-danger", "panel-warning","panel-success"]
        
        
    end

end
