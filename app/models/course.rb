class Course < ActiveRecord::Base
    attr_accessible :name, :number, :department, :credits
    has_many :course_evaluations
    has_many :professors, :through => :course_evaluations
    has_many :courses, :through => :course_evaluations
    
    def best_professor
        best_prof = course.professors.first
        course.professors.each do |c|
            if c.overall_cross_rating > max_rating
                best_prof = c.professor.last_name
                max_rating = c.overall_cross_rating
            end
        end
        return best_prof
    end
    
end
