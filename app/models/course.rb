class Course < ActiveRecord::Base
    has_one :course_type
    #has_many :learners, through: :registrations
end
