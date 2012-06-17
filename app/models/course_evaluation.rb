class CourseEvaluation < ActiveRecord::Base
    attr_accessible :course_id, :professor_id, :overall_cross_rating
    belongs_to :professor
    belongs_to :course 
    has_many :individual_evaluations
    accepts_nested_attributes_for :individual_evaluations
    
    def overall_cross_rating
      individual_evaluations.each do |i|
        r = r + i.rating
      end 
      return r
    end 

end
