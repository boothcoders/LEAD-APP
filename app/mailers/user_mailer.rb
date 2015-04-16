class UserMailer < ApplicationMailer
    
    def feedback_request_notification(request)
        @request = request
        @requestee = request.requestee
        @requestor = request.requestor
        @feeback_link = url_for(:controller => 'requests', :id => request.id)
        mail(to: @requestee.email, subject: "You have a new feedback request from #{@requestor.first_last}")
    end
end
