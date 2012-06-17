class IndividualEvaluationsController < ApplicationController

  before_filter :confirm_logged_in
  before_filter :find_course_evaluation
  
  #need to update for the rest of crud
  def list
    @ind_eval = IndividualEvaluation.where(:course_evaluation_id => @course_evaluation.id)
  end
  
  def show
    @ind_eval = IndividualEvaluation.find(params[:id])
  end
  
  def new
    @ind_eval = IndividualEvaluation.new(:course_evaluation_id => @course_evaluation.id)
  end

  def create
    @ind_eval = IndividualEvaluation.new(params[:individual_evaluation])
    @ind_eval.save
    redirect_to ({:controller => 'courses', :action => 'list'})
    #this is not complete - need to add conditions if save fails
  end
  
  private
  def find_course_evaluation
    if params[:course_evaluation_id]
      @course_evaluation = CourseEvaluation.find_by_id(params[:course_evaluation_id])
    end
  end
end
