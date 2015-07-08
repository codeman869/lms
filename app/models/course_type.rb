class CourseType < ActiveRecord::Base
    has_many :instances
    has_many :courses, through: :instances
end
