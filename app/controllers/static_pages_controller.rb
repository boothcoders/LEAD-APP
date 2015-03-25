class StaticPagesController < ApplicationController
    before_action :authenticate_user!
    
    def home
    end
    
    def my_progress
        mg_client = Mailgun::Client.new ENV["MAILGUN_API_KEY"]
        
        message_params = {:from    => 'thomas.besio@gmail.com',
                  :to      => 'thomas.besio@gmail.com',
                  :subject => 'The My Progress page was accessed',
                  :text    => 'Testing the mailgun ruby gem'}
                  
        mg_client.send_message "app329d792e476d43e1bc5580095f2893b2.mailgun.org", message_params
        
        @interactions = current_user.interactions.order("interaction_date DESC")
    end

    def my_progress_2
        @interactions = current_user.interactions.order("interaction_date DESC")
        @panel_heading = [0, "panel-danger", "panel-warning","panel-success"]
        
        
    end

end
