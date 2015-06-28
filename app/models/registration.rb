class Registration < ActiveRecord::Base
    belongs_to :learner
    belongs_to :course
end
