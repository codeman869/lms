class Learner < ActiveRecord::Base
    has_many :courses, through: :registrations
end
