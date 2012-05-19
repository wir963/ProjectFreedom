class IndividualEvaluation < ActiveRecord::Base
   attr_accessible :user_name, :rating, :course, :professor
  belongs_to :course_evaluation
  #belongs_to :professor, :through => :course_evaluation
  #belongs_to :course, :through => :course_evaluation
  
  def professor
    course_evaluation.professor
  end
  
  def course
    individual_evaluation.course_evaluation.overall_cross_rating
  end
  
end
