class IndividualEvaluation < ActiveRecord::Base
  attr_accessible :user_name, :rating, :course, :professor, :course_evaluation_id
  belongs_to :course_evaluation
  #belongs_to :professor, :through => :course_evaluation
  #belongs_to :course, :through => :course_evaluation
  
    validates_presence_of :user
    
    validates_presence_of :course_id
    validates_numericality_of :course_id
    
    validates_presence_of :professor_id
    validates_numericality_of :professor_id
    
    validates_presence_of :rating
    validates_numericality_of :rating, :greater_than_or_equal_to=>0, :less_than_or_equal_to=>0
    
  
end
