class Professor < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :overall_rating
    has_many :course_evaluations
    has_many :courses, :through => :course_evaluations
    has_many :individual_evaluations, :through => :course_evaluations
end
