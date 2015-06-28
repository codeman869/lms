class Instance < ActiveRecord::Base
    has_one :course
    belongs_to :course_type
end
