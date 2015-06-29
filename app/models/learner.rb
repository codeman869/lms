class Learner < ActiveRecord::Base
    has_many :courses, through: :registrations
    has_secure_password
end
