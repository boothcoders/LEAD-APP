class Request < ActiveRecord::Base

    belongs_to :interaction
    belongs_to :goal

    belongs_to(:requestor, { :class_name => "User", :foreign_key => "requestor_id"})
    belongs_to(:requestee, { :class_name => "User", :foreign_key => "requestee_id"})

end
