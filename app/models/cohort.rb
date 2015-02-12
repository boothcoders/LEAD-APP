class Cohort < ActiveRecord::Base

    has_many :users

    validates :cohort_name, :uniqueness => true

end
