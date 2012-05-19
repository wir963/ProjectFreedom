class CourseEvaluation < ActiveRecord::Base
    attr_accessible :course_id, :professor_id
    belongs_to :professor
    belongs_to :course 
    has_many :individual_evaluations
    
    def overall_cross_rating
       individual_evaluations.first.rating
    end 

end
