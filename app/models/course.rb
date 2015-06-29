class Course < ActiveRecord::Base
    has_one :course_type, through: :instances
    has_many :learners, through: :registrations
end
