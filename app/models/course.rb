class Course < ActiveRecord::Base
    has_one :instance
    has_one :course_type, through: :instance
    #has_many :learners, through: :registrations
end
