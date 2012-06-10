class IndividualEvaluation < ActiveRecord::Base
  attr_accessible :user_name, :rating, :course, :professor, :course_evaluation_id
  belongs_to :course_evaluation
  #belongs_to :professor, :through => :course_evaluation
  #belongs_to :course, :through => :course_evaluation
  
end
