class Course < ActiveRecord::Base
    belongs_to :courseType
    has_many :learners, through: :registrations
end
