class Professor < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :overall_rating
    has_many :course_evaluations
    has_many :courses, :through => :course_evaluations
    has_many :individual_evaluations, :through => :course_evaluations

    validates_presence_of :first_name
    validates_length_of :first_name, :maximum=>140 
    
    validates_presence_of :last_name
    validates_length_of :last_name, :maximum=>140 
    
    validates_presence_of :overall_rating
    validates_numericality_of :overall_rating, :greater_than_or_equal_to=>0, :less_than_or_equal_to=>0
    
    validates_presence_of :department 
    validates_length_of :department, :is=>4

end
