class CourseType < ActiveRecord::Base
    has_many :courses, through: :instances
end
